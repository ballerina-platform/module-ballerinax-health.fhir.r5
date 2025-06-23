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
import ballerinax/health.fhir.r5;
import ballerinax/health.fhir.r5.international500;

type ServiceTestError distinct error;

// This service is used to test the FHIR service.
Service fhirService = service object {
    // read
    resource function get fhir/r5/Patient/[string id](r5:FHIRContext fhirCtx) returns international500:Patient|ServiceTestError {
        r5:FHIRInteraction interaction = fhirCtx.getInteraction();
        if interaction is FHIRReadInteraction {
            return {
                resourceType: "Patient",
                id: "1"
            };
        } else {
            return error ServiceTestError("Incorrect interation engaged!");
        }
    }

    // vread
    resource function get fhir/r5/Patient/[string id]/_history/[string vid](r5:FHIRContext fhirCtx) returns international500:Patient|ServiceTestError {
        r5:FHIRInteraction interaction = fhirCtx.getInteraction();
        if interaction is FHIRVReadInteraction {
            return {
                resourceType: "Patient",
                id: "1"
            };
        } else {
            return error ServiceTestError("Incorrect interation engaged!");
        }
    }

// search
    resource function get fhir/r5/Patient(r5:FHIRContext fhirCtx) returns r5:Bundle|error {
        r5:FHIRInteraction interaction = fhirCtx.getInteraction();
        if interaction is FHIRSearchInteraction {
            r5:RequestSearchParameter[]? id = fhirCtx.getRequestSearchParameter("_id");
            // check whether the _id search parameter is present
            r5:DomainResource[] patients = [];
            if id !is () {
                string idValue = id[0].value;

                if idValue == "New" {
                    // return not found error if the id is not "New"
                    return r5:createFHIRError(
                        "Resource not found",
                        r5:ERROR,
                        r5:INVALID,
                        httpStatusCode = http:STATUS_NOT_FOUND
                    );
                } else {
                    patients = [
                        {
                            resourceType: "Patient",
                            id: idValue
                        }
                    ];
                }
            } else {
                patients = [
                    {
                        resourceType: "Patient",
                        id: "1"
                    },
                    {
                        resourceType: "Patient",
                        id: "2"
                    }
                ];
            }
            return r5:createFhirBundle(r5:BUNDLE_TYPE_SEARCHSET, patients);
        } else {
            return error ServiceTestError("Incorrect interation engaged!");
        }
    }

    // update
    resource function put fhir/r5/Patient/[string id](r5:FHIRContext fhirCtx, international500:Patient p) returns http:Response|ServiceTestError {
        r5:FHIRInteraction interaction = fhirCtx.getInteraction();
        if interaction is FHIRUpdateInteraction {
            http:Response response = new;
            response.statusCode = http:STATUS_ACCEPTED;
            return response;
        } else {
            return error ServiceTestError("Incorrect interation engaged!");
        }
    }

    // create
    resource function post fhir/r5/Patient(r5:FHIRContext fhirCtx, international500:Patient p) returns http:Response|ServiceTestError {
        r5:FHIRInteraction interaction = fhirCtx.getInteraction();
        if interaction is FHIRCreateInteraction {
            http:Response response = new;
            response.statusCode = http:STATUS_CREATED;
            return response;
        } else {
            return error ServiceTestError("Incorrect interation engaged!");
        }
    }

    // patch
    resource function patch fhir/r5/Patient/[string id](r5:FHIRContext fhirCtx, json p) returns http:Response|ServiceTestError {
        r5:FHIRInteraction interaction = fhirCtx.getInteraction();
        if interaction is FHIRPatchInteraction {
            http:Response response = new;
            response.statusCode = http:STATUS_ACCEPTED;
            return response;
        } else {
            return error ServiceTestError("Incorrect interation engaged!");
        }
    }

    // delete
    resource function delete fhir/r5/Patient/[string id](r5:FHIRContext fhirCtx) returns http:Response|ServiceTestError {
        r5:FHIRInteraction interaction = fhirCtx.getInteraction();
        if interaction is FHIRDeleteInteraction {
            http:Response response = new;
            response.statusCode = http:STATUS_ACCEPTED;
            return response;
        } else {
            return error ServiceTestError("Incorrect interation engaged!");
        }
    }

    // instance history
    resource function get fhir/r5/Patient/[string id]/_history(r5:FHIRContext fhirCtx) returns r5:Bundle|ServiceTestError {
        r5:FHIRInteraction interaction = fhirCtx.getInteraction();
        if interaction is FHIRInstanceHistoryInteraction {
            r5:DomainResource[] patients = [
                {
                    resourceType: "Patient",
                    id: "1"
                },
                {
                    resourceType: "Patient",
                    id: "2"
                }
            ];
            return r5:createFhirBundle(r5:BUNDLE_TYPE_HISTORY, patients);
        } else {
            return error("Incorrect interation engaged!");
        }
    }

    // type history
    resource function get fhir/r5/Patient/_history(r5:FHIRContext fhirCtx) returns r5:Bundle|ServiceTestError {
        r5:FHIRInteraction interaction = fhirCtx.getInteraction();
        if interaction is FHIRHistoryInteraction {
            r5:DomainResource[] patients = [
                {
                    resourceType: "Patient",
                    id: "1"
                },
                {
                    resourceType: "Patient",
                    id: "2"
                }
            ];
            return r5:createFhirBundle(r5:BUNDLE_TYPE_HISTORY, patients);
        } else {
            return error("Incorrect interation engaged!");
        }
    }

    // metadata
    resource function get fhir/r5/metadata(r5:FHIRContext fhirCtx) returns international500:CapabilityStatement|ServiceTestError {
        r5:FHIRInteraction interaction = fhirCtx.getInteraction();
        if interaction is FHIRCapabilitiesInteraction {
            international500:CapabilityStatement capstmnt = {
                date: "2023-01-01",
                fhirVersion: "4.0.1",
                format: [
                    international500:CODE_FORMAT_JSON
                ],
                kind: "instance",
                status: "active"
            };
            return capstmnt;
        } else {
            return error("Incorrect interation engaged!");
        }
    }
};

// This service is used to test the FHIR service with default pagination.
Service fhirServiceWithDefaultPagination = service object {
    resource function get test1/Patient(r5:FHIRContext fhirContext) returns [map<r5:RequestSearchParameter[]>, r5:PaginationContext] {
        return [fhirContext.getRequestSearchParameters(), <r5:PaginationContext>fhirContext.getPaginationContext()];
    }

    resource function get test2/Patient(r5:FHIRContext fhirContext) returns r5:Bundle {
        r5:DomainResource[] patients = [
            {
                resourceType: "Patient",
                id: "1"
            },
            {
                resourceType: "Patient",
                id: "2"
            }
        ];
        return r5:createFhirBundle(r5:BUNDLE_TYPE_SEARCHSET, patients);
    }

    resource function get test3/Patient(r5:FHIRContext fhirContext) returns r5:Bundle {
        r5:DomainResource[] patients = [
            {
                resourceType: "Patient",
                id: "1"
            },
            {
                resourceType: "Patient",
                id: "2"
            },
            {
                resourceType: "Patient",
                id: "3"
            },
            {
                resourceType: "Patient",
                id: "4"
            },
            {
                resourceType: "Patient",
                id: "5"
            },
            {
                resourceType: "Patient",
                id: "6"
            },
            {
                resourceType: "Patient",
                id: "7"
            },
            {
                resourceType: "Patient",
                id: "8"
            },
            {
                resourceType: "Patient",
                id: "9"
            },
            {
                resourceType: "Patient",
                id: "10"
            }
        ];
        return r5:createFhirBundle(r5:BUNDLE_TYPE_SEARCHSET, patients);
    }
};

// This service is used to test disabled pagination.
Service fhirServiceNoPagination = service object {
    resource function get test1/Patient(r5:FHIRContext fhirContext) returns r5:Bundle {
        r5:DomainResource[] patients = [
            {
                resourceType: "Patient",
                id: "1"
            },
            {
                resourceType: "Patient",
                id: "2"
            }
        ];
        return r5:createFhirBundle(r5:BUNDLE_TYPE_SEARCHSET, patients);
    }
};

// This service is used to test FHIR extended operations
Service fhirOperationsService = service object {
    resource function get fhir/r5/ConceptMap/\$translate(r5:FHIRContext fhirCtx)
            returns international500:Parameters|ServiceTestError {
        r5:FHIRInteraction interaction = fhirCtx.getInteraction();
        if interaction is r5:FHIROperationInteraction {
            return {};
        } else {
            return error("Incorrect interaction engaged!");
        }
    }

    resource function post fhir/r5/ConceptMap/\$translate(r5:FHIRContext fhirCtx,
            international500:Parameters parameters) returns international500:Parameters|ServiceTestError {
        r5:FHIRInteraction interaction = fhirCtx.getInteraction();
        if interaction is r5:FHIROperationInteraction {
            return {};
        } else {
            return error("Incorrect interaction engaged!");
        }
    }

    resource function get fhir/r5/ConceptMap/[string id]/\$translate(r5:FHIRContext fhirCtx,
            international500:Parameters parameters) returns international500:Parameters|ServiceTestError {
        r5:FHIRInteraction interaction = fhirCtx.getInteraction();
        if interaction is r5:FHIROperationInteraction {
            return {};
        } else {
            return error("Incorrect interaction engaged!");
        }
    }

    // Base operation resource function
    resource function get fhir/r5/ConceptMap/\$meta(r5:FHIRContext fhirCtx)
            returns r5:Meta|ServiceTestError {
        r5:FHIRInteraction interaction = fhirCtx.getInteraction();
        if interaction is r5:FHIROperationInteraction {
            return {};
        } else {
            return error("Incorrect interaction engaged!");
        }
    }

    resource function get fhir/r5/\$closure(r5:FHIRContext fhirCtx)
            returns international500:ConceptMap|ServiceTestError {
        r5:FHIRInteraction interaction = fhirCtx.getInteraction();
        if interaction is r5:FHIROperationInteraction {
            return {status: "active"};
        } else {
            return error("Incorrect interaction engaged!");
        }
    }

    // Invalid operation resource function for testing.
    // 'ConceptMap' resource does not have a '$find-matches' operation.
    resource function get fhir/r5/ConceptMap/\$find\-matches(r5:FHIRContext fhirCtx)
            returns international500:Parameters|ServiceTestError {
        r5:FHIRInteraction interaction = fhirCtx.getInteraction();
        if interaction is r5:FHIROperationInteraction {
            return {};
        } else {
            return error("Incorrect interaction engaged!");
        }
    }

    // Invalid operation resource function for testing. 
    // '$translate' operation does not support system scope.
    resource function get fhir/r5/\$translate(r5:FHIRContext fhirCtx)
            returns international500:Parameters|ServiceTestError {
        r5:FHIRInteraction interaction = fhirCtx.getInteraction();
        if interaction is r5:FHIROperationInteraction {
            return {};
        } else {
            return error("Incorrect interaction engaged!");
        }
    }
};
