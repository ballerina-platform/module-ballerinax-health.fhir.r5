// Copyright (c) 2025, WSO2 LLC. (http://www.wso2.com).
// WSO2 LLC. licenses this file to you under the Apache License,
// Version 2.0 (the "License"); you may not use this file except
// in compliance with the License.
// You may obtain a copy of the License at
// http://www.apache.org/licenses/LICENSE-2.0
// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations
// under the License.
import ballerina/http;
import ballerina/io;
import ballerina/log;
import ballerinax/health.fhir.r5;

# Response error interceptor to post-process FHIR responses
public isolated service class FHIRResponseInterceptor {
    *http:ResponseInterceptor;

    final r5:ResourceAPIConfig apiConfig;
    private final readonly & map<r5:SearchParamConfig> searchParamConfigMap;
    // All the operations that are active in the API config
    private final readonly & map<r5:OperationConfig> operationConfigMap;
    final readonly & r5:AuditConfig? auditConfig;
    final http:Client|http:ClientError? auditClient;

    public function init(r5:ResourceAPIConfig apiConfig) {
        self.apiConfig = apiConfig;
        self.auditConfig = apiConfig.auditConfig;
        r5:AuditConfig? auditConfig = self.auditConfig;
        if auditConfig != () {
            self.auditClient = new (auditConfig.auditServiceUrl, retryConfig = {
                interval: 5,
                count: 3,
                backOffFactor: 2.0,
                maxWaitInterval: 30
            });
        } else {
            self.auditClient = ();
        }

        map<r5:SearchParamConfig> searchParamConfigs = {};
        // process seach parameters
        foreach r5:SearchParamConfig item in self.apiConfig.searchParameters {
            if item.active {
                searchParamConfigs[item.name] = item;
            }
        }
        self.searchParamConfigMap = searchParamConfigs.cloneReadOnly();

        // Active operations in the API config
        map<r5:OperationConfig> operationConfigs = {};
        foreach r5:OperationConfig operationConfig in self.apiConfig.operations {
            if operationConfig.active {
                operationConfigs[operationConfig.name] = operationConfig;
            }
        }
        self.operationConfigMap = operationConfigs.cloneReadOnly();
    }

    remote isolated function interceptResponse(http:RequestContext ctx, http:Response res) returns http:NextService|r5:FHIRError? {
        log:printDebug("Execute: FHIR Response Interceptor");
        final r5:FHIRContext fhirContext = check r5:getFHIRContext(ctx);
        fhirContext.setDirection(r5:OUT);

        check self.postProcessSearchParameters(fhirContext);
        check self.postProcessOperation(fhirContext);

        // set the content type to fhir+json if the response is a json payload
        if res.getJsonPayload() is json {
            error? setType = res.setContentType(r5:FHIR_MIME_TYPE_JSON);
            if setType is error {
                // ignore since the content type is set internally and not by a client
            }
        }

        // set the location header if available
        anydata? location = fhirContext.getProperty(r5:LOCATION_HEADER_PROP_NAME);
        if location is string {
            res.setHeader(LOCATION_HEADER, location);
        }

        // Set custom headers and status code from the FHIR context(If available)
        r5:HTTPResponse? httpResponse = fhirContext.getHTTPResponse();
        if httpResponse != () {
            log:printDebug("Setting response status code and headers from the FHIR context.");
            // set the response status code
            if httpResponse.statusCode is int {
                res.statusCode = <int>httpResponse.statusCode;
            }
            // set the response headers
            foreach string headerName in httpResponse.headers.keys() {
                log:printDebug(string `Setting header: ${headerName}`);

                string? headerValue = httpResponse.headers[headerName];
                if headerValue != () {
                    res.setHeader(headerName, headerValue);
                }

            }
        }

        if fhirContext.isInErrorState() {
            // set the proper response code
            res.statusCode = fhirContext.getErrorCode();
        }

        // Worker to send the audit events asynchronously
        worker auditWorker {
            r5:AuditConfig? auditConfig = self.auditConfig;
            if auditConfig != () && auditConfig.enabled {
                http:Client|http:ClientError? auditClient = self.auditClient;

                if auditClient is () || auditClient is http:ClientError {
                    // TODO temporary adding the println as errors are not logged by ballerina log module.
                    io:println(self.auditClient);
                    log:printError("[Audit Event Sender] Failed to establish a connection to audit service.", auditClient);
                } else {
                    // send to the audit service and retries if it fails
                    r5:AuditEventSendingError? failed = r5:handleAuditEvent(auditClient, fhirContext);
                    if failed != () && failed.fhirError != () {
                        // if sending the audit event is still fails, log the error and the audit event
                        log:printError("[Audit Event Sender] Error while sending audit event.", 'error = failed.fhirError, auditEvent = failed.auditEvent);
                    }
                }
            }
        }
        return getNextService(ctx);
    }

    isolated function postProcessSearchParameters(r5:FHIRContext context) returns r5:FHIRError? {
        map<r5:RequestSearchParameter[]> & readonly searchParameters = context.getRequestSearchParameters();

        foreach string paramName in searchParameters.keys() {
            r5:RequestSearchParameter[] searchParams = searchParameters.get(paramName);
            foreach r5:RequestSearchParameter searchParam in searchParams {
                if self.searchParamConfigMap.hasKey(paramName) {
                    r5:SearchParamConfig & readonly paramConfig = self.searchParamConfigMap.get(paramName);
                    r5:SearchParameterPostProcessor? postProcessor = paramConfig.postProcessor;
                    if postProcessor != () {
                        r5:FHIRSearchParameterDefinition? definition = r5:fhirRegistry.getResourceSearchParameterByName(self.apiConfig.resourceType, paramName);
                        if definition != () {
                            check postProcessor(definition, searchParam, context);
                        }
                    }
                } else if r5:COMMON_SEARCH_PARAMETERS.hasKey(paramName) {
                    // post process common search parameter
                    r5:CommonSearchParameterDefinition & readonly definition = r5:COMMON_SEARCH_PARAMETERS.get(paramName);
                    r5:CommonSearchParameterPostProcessor? & readonly postProcessor = definition.postProcessor;
                    if postProcessor != () {
                        check postProcessor(definition, searchParam, context);
                    }
                }
            }
        }
    }

    # Post-processes a FHIR operation.
    #
    # + context - The FHIR context.
    # + return - A `r5:FHIRError` if an error occurs during post-processing, nil otherwise.
    isolated function postProcessOperation(r5:FHIRContext context) returns r5:FHIRError? {
        r5:FHIRInteraction interaction = context.getInteraction();
        if interaction is r5:FHIROperationInteraction {
            string operation = interaction.operation;
            if self.operationConfigMap.hasKey(operation) {
                r5:OperationConfig & readonly operationConfig = self.operationConfigMap.get(operation);
                r5:OperationPostProcessor? postProcessor = operationConfig.postProcessor;
                if postProcessor != () {
                    r5:FHIROperationDefinition? operationDefinition =
                            r5:fhirRegistry.getResourceOperationByName(self.apiConfig.resourceType, operation);
                    // Could be a base operation overridden in the API config
                    if operationDefinition == () && r5:BASE_RESOURCE_OPERATIONS.hasKey(operation) {
                        operationDefinition = r5:BASE_RESOURCE_OPERATIONS.get(operation);
                    }
                    if operationDefinition != () {
                        check postProcessor(operationDefinition, context);
                    }
                }
            }
        }
    }
}

# Response error interceptor to handle errors thrown by fhir preproccessors
public isolated service class FHIRResponseErrorInterceptor {
    *http:ResponseErrorInterceptor;

    isolated remote function interceptResponseError(error err) returns http:NotFound|http:BadRequest|http:UnsupportedMediaType
            |http:NotAcceptable|http:Unauthorized|http:NotImplemented|http:MethodNotAllowed|http:InternalServerError {
        log:printDebug("Execute: FHIR Response Error Interceptor");
        if err is r5:FHIRError {
            match err.detail().httpStatusCode {
                http:STATUS_NOT_FOUND => {
                    http:NotFound notFound = {
                        body: r5:handleErrorResponse(err),
                        mediaType: r5:FHIR_MIME_TYPE_JSON
                    };
                    return notFound;
                }
                http:STATUS_BAD_REQUEST => {
                    http:BadRequest badRequest = {
                        body: r5:handleErrorResponse(err),
                        mediaType: r5:FHIR_MIME_TYPE_JSON
                    };
                    return badRequest;
                }
                http:STATUS_UNSUPPORTED_MEDIA_TYPE => {
                    http:UnsupportedMediaType unsupportedMediaType = {
                        body: r5:handleErrorResponse(err),
                        mediaType: r5:FHIR_MIME_TYPE_JSON
                    };
                    return unsupportedMediaType;
                }
                http:STATUS_NOT_ACCEPTABLE => {
                    http:NotAcceptable notAcceptable = {
                        body: r5:handleErrorResponse(err),
                        mediaType: r5:FHIR_MIME_TYPE_JSON
                    };
                    return notAcceptable;
                }
                http:STATUS_UNAUTHORIZED => {
                    http:Unauthorized unauthorized = {
                        body: r5:handleErrorResponse(err),
                        mediaType: r5:FHIR_MIME_TYPE_JSON
                    };
                    return unauthorized;
                }
                http:STATUS_NOT_IMPLEMENTED => {
                    http:NotImplemented notImplemented = {
                        body: r5:handleErrorResponse(err),
                        mediaType: r5:FHIR_MIME_TYPE_JSON
                    };
                    return notImplemented;
                }
                http:STATUS_METHOD_NOT_ALLOWED => {
                    http:MethodNotAllowed methodNotAllowed = {
                        body: r5:handleErrorResponse(err),
                        mediaType: r5:FHIR_MIME_TYPE_JSON
                    };
                    return methodNotAllowed;
                }
                _ => {
                    http:InternalServerError internalServerError = {
                        body: r5:handleErrorResponse(err),
                        mediaType: r5:FHIR_MIME_TYPE_JSON
                    };
                    return internalServerError;
                }
            }
        }
        http:InternalServerError internalServerError = {
            body: r5:handleErrorResponse(err),
            mediaType: r5:FHIR_MIME_TYPE_JSON
        };
        return internalServerError;
    }
}
