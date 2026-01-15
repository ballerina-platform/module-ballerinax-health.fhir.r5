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
import ballerinax/health.fhir.r5;
import ballerinax/health.fhir.r5.parser;
import ballerina/http;
import ballerina/log;

isolated http:Client? conditionalInvokationClient = ();

isolated function createConditionalInvokationClient(int port) returns error? {
    lock {
	    conditionalInvokationClient = check new ("http://localhost:" + port.toBalString());
    }
}

isolated function addPagination(r5:PaginationContext paginationContext, map<r5:RequestSearchParameter[]> requestSearchParameters,
        r5:Bundle bundle, string path) returns r5:Bundle {
    r5:BundleLink[] allLinks = [];

    // construct query string from processed search params
    string qString = "";
    foreach r5:RequestSearchParameter[] params in requestSearchParameters {
        foreach r5:RequestSearchParameter param in params {
            if param.name == COUNT {
                continue;
            }
            qString = qString + string `${param.name}=${param.value}&`;
        }
    }
    if qString.endsWith("&") {
        qString = qString.substring(0, qString.length() - 1);
    }

    int currentpage = paginationContext.page;
    int pageSize = paginationContext.pageSize;

    // populate self link
    r5:BundleLink selfLink = constructUrl(qString, "self", path, pageSize, currentpage);

    allLinks.push(selfLink);

    r5:BundleEntry[]? entries = bundle.entry;
    if entries is r5:BundleEntry[] && entries.length() < pageSize {
        // no next link
    } else {
        // populate next link
        r5:BundleLink nextLink = constructUrl(qString, "next", path, pageSize, currentpage + 1);
        allLinks.push(nextLink);
    }

    if currentpage > 1 {
        // previous link exists
        // populate previous link
        r5:BundleLink prevLink = constructUrl(qString, "prev", path, pageSize, currentpage - 1);
        allLinks.push(prevLink);
    }

    bundle.link = allLinks;
    return bundle;
}

isolated function constructUrl(string qString, string relation, string path, int count, int page) returns r5:BundleLink {
    string url = qString.length() > 0 ? string `${path}?${qString}&${PAGE}=${page}&${COUNT}=${count}` : string `${path}?${PAGE}=${page}&${COUNT}=${count}`;
    return {
        relation: relation,
        url: string `${url}`
    };
}

isolated function handleBundleInfo(r5:Bundle bundle, r5:FHIRContext fhirCtx, string path) returns r5:Bundle {
    r5:PaginationContext? paginationContext = <r5:PaginationContext?>fhirCtx.getPaginationContext();
    if paginationContext is r5:PaginationContext {
        if paginationContext.paginationEnabled {
            return addPagination(paginationContext, fhirCtx.getRequestSearchParameters(), bundle, path);
        } else {
            // populate bundle total
            r5:BundleEntry[]? entries = bundle.entry;
            if entries is r5:BundleEntry[] {
                bundle.total = entries.length();
            }
            return bundle;
        }
    }
    return bundle;
}

// TODO: Need to optimize this function
// This function use http client to handle conditional search requests
// Have to find a way to handle conditional search without using http client (in programming level)
isolated function handleConditionalHeader(string conditionalUrl, string resourcePath) returns r5:FHIRError? {
    int? indexOfSearchParams = conditionalUrl.indexOf("?");

    // construct the request path by appending the search parameters if they exist
    string requestPath = resourcePath + (indexOfSearchParams is int ? conditionalUrl.substring(indexOfSearchParams) : "");

    do {
        r5:Bundle bundle;
        http:Response? response = ();

        lock {
            if conditionalInvokationClient is () {
                return;
            }

            // send a http request to the resourcePath
            response = check (<http:Client>conditionalInvokationClient)->get(requestPath);
        }

        if response is http:Response {
            // if and only if, the resource is not found, the request response will be 404
            if response.statusCode == http:STATUS_NOT_FOUND {
                // allow to create a new resource if no entries are found
                log:printDebug("No existing resource found for the given search criteria, allowing creation of a new resource");
                return;
            } 

            // Extract the entity and decode to r5:Bundle
            bundle = check parser:parse(check response.getJsonPayload()).ensureType();
        } else {
            return r5:createFHIRError("Failed to get a valid HTTP response", r5:ERROR, r5:INVALID);
        }

        r5:BundleEntry[]? entries = bundle.entry;
        if entries is r5:BundleEntry[] {
            // check the bundle entry count
            if entries.length() == 0 {
                // allow to create a new resource if no entries are found
                log:printDebug("No existing resource found for the given search criteria, allowing creation of a new resource");
                return;
            } else if entries.length() == 1 {
                // exising resource found, return 200
                log:printDebug("Existing resource found for the given search criteria, returning 200 OK");
                return r5:createFHIRError(
                        "Resource already exists for the given search criteria",
                        r5:INFORMATION,
                        r5:PROCESSING_DUPLICATE,
                        httpStatusCode = http:STATUS_OK);
            } else {
                // return 412 Precondition Failed if more than one entry is found
                log:printDebug("Multiple resources found for the given search criteria, returning 412 Precondition Failed");
                return r5:createFHIRError(
                        "Multiple resources found for the given search criteria",
                        r5:ERROR,
                        r5:INVALID,
                        httpStatusCode = http:STATUS_PRECONDITION_FAILED);
            }
        } else {
            return r5:createFHIRError("Invalid response received while handling conditional search", r5:ERROR, r5:INVALID);
        }
    } on fail var e {
        // log the error and return a FHIR error
    	return r5:createFHIRError("Error while handling conditional search: " + e.message(), r5:ERROR, r5:INVALID);
    }
}
