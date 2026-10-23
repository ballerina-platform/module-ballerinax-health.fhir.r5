// Copyright (c) 2026 WSO2 Inc. (http://www.wso2.org) All Rights Reserved.
//
// WSO2 Inc. licenses this file to you under the Apache License,
// Version 2.0 (the "License"); you may not use this file except
// in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations
// under the License.

import ballerina/test;

const string TEST_PROFILE = "http://example.org/fhir/StructureDefinition/test-observation";

isolated function testApiConfig(string resourceType) returns ResourceAPIConfig => {
    resourceType: resourceType,
    profiles: [TEST_PROFILE],
    defaultProfile: TEST_PROFILE,
    searchParameters: [
        {name: "code", active: true, 'type: TOKEN, information: {description: "Observation code"}},
        {name: "date", active: true, 'type: DATE},
        {name: "note", active: true},
        {name: "status", active: false, 'type: TOKEN}
    ],
    operations: [
        {name: "lastn", active: true, information: {description: "Last N observations"}},
        {name: "stats", active: false}
    ],
    serverConfig: (),
    authzConfig: ()
};

isolated function findResource(CapabilityStatement statement, string resourceType)
        returns CapabilityStatementRestResource? {
    CapabilityStatementRest[]? rest = statement.rest;
    if rest is () || rest.length() == 0 {
        return ();
    }
    foreach CapabilityStatementRestResource resourceEntry in rest[0].'resource ?: [] {
        if resourceEntry.'type == resourceType {
            return resourceEntry;
        }
    }
    return ();
}

@test:Config {}
function testCapabilityStatementDescribesRegisteredService() returns error? {
    string resourceType = "Observation";
    fhirRegistry.registerFHIRService(resourceType, {
        name: "Observation Service",
        serviceUrl: "http://localhost:9090",
        apiConfig: testApiConfig(resourceType)
    });

    CapabilityStatement statement = check generateFHIRCapabilityStatement();
    _ = fhirRegistry.removeFHIRService(resourceType);

    test:assertEquals(statement.resourceType, "CapabilityStatement");
    test:assertEquals(statement.fhirVersion, "5.0.0");
    test:assertEquals(statement.status, CODE_STATUS_ACTIVE);
    test:assertEquals(statement.kind, CODE_KIND_INSTANCE);
    test:assertEquals(statement.format, [CODE_FORMAT_JSON]);
    test:assertEquals((<CapabilityStatementRest[]>statement.rest)[0].mode, CODE_MODE_SERVER);

    CapabilityStatementRestResource? observation = findResource(statement, resourceType);
    if observation is () {
        test:assertFail("Registered Observation service is missing from the CapabilityStatement");
    }
    test:assertEquals(observation.profile, TEST_PROFILE);
    test:assertEquals(observation.supportedProfile, [TEST_PROFILE]);

    // Only active search parameters are advertised, each with its declared type (string when undeclared).
    CapabilityStatementRestResourceSearchParam[] searchParams = observation.searchParam ?: [];
    test:assertEquals(searchParams.map(p => [p.name, p.'type]), [
        ["code", CODE_TYPE_TOKEN],
        ["date", CODE_TYPE_DATE],
        ["note", CODE_TYPE_STRING]
    ]);
    test:assertEquals(searchParams[0].documentation, "Observation code");

    CapabilityStatementRestResourceOperation[] operations = observation.operation ?: [];
    test:assertEquals(operations.length(), 1);
    test:assertEquals(operations[0].name, "lastn");
    test:assertEquals(operations[0].definition, "http://hl7.org/fhir/OperationDefinition/lastn");
}

@test:Config {}
function testCapabilityStatementAppliesConfig() returns error? {
    CapabilityStatement statement = check generateFHIRCapabilityStatement({
        fhirVersion: "5.0.0",
        softwareName: "Test FHIR Server",
        softwareVersion: "2.1.0",
        implementationDescription: "Test implementation",
        title: "Test Capability Statement",
        publisher: "WSO2",
        status: CODE_STATUS_DRAFT
    });

    test:assertEquals(statement.software?.name, "Test FHIR Server");
    test:assertEquals(statement.software?.'version, "2.1.0");
    test:assertEquals(statement.implementation?.description, "Test implementation");
    test:assertEquals(statement.title, "Test Capability Statement");
    test:assertEquals(statement.publisher, "WSO2");
    test:assertEquals(statement.status, CODE_STATUS_DRAFT);
}

@test:Config {}
function testFHIRServiceRegistry() {
    string resourceType = "Encounter";
    fhirRegistry.registerFHIRService(resourceType, {name: "Encounter Service", serviceUrl: "http://localhost:9090"});
    // A second registration for the same resource type is ignored rather than replacing the first.
    fhirRegistry.registerFHIRService(resourceType, {name: "Other Service", serviceUrl: "http://localhost:9091"});

    FHIRServiceInfo? registered = fhirRegistry.getFHIRService(resourceType);
    test:assertEquals(registered?.name, "Encounter Service");
    test:assertTrue(fhirRegistry.getAllRegisteredFHIRServices().hasKey(resourceType));

    test:assertTrue(fhirRegistry.removeFHIRService(resourceType));
    test:assertFalse(fhirRegistry.removeFHIRService(resourceType));
    test:assertEquals(fhirRegistry.getFHIRService(resourceType), ());
}
