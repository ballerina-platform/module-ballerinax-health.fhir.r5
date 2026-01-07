
import ballerina/constraint;
import ballerina/http;
import ballerina/test;
import ballerinax/health.fhir.r5;
import ballerinax/health.fhir.r5.international500;

@test:Config {}
function testValidate1() {
    json body = {
        "resourceType": "Patient",
        "id": "591841",
        "meta": {
            "versionId": "1",
            "lastUpdated": "2020-01-22T05:30:13.137+00:00",
            "source": "#KO38Q3spgrJoP5fa"
        },
        "identifier": [
            {
                "type": {
                    "coding": [
                        {
                            "system": "http://hl7.org/fhir/v2/0203",
                            "code": "MR"
                        }
                    ]
                },
                "value": "18e5fd39-7444-4b30-91d4-57226deb2c78"
            }
        ],
        "name": [
            {
                "family": "Cushing",
                "given": ["Caleb"]
            }
        ],
        "birthDate": "2000-01-01"
    };
    r5:FHIRValidationError? validationResult = validate(body);
    if validationResult is r5:FHIRValidationError {
        test:assertFail(msg = "Validation failed");
    }
}

@test:Config {}
function testValidate2() {
    json body = {
        "resourceType": "AllergyIntolerance",
        "id": "example",
        "text": {
            "status": "generated",
            "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative: AllergyIntolerance</b><a name=\"example\"> </a><a name=\"hcexample\"> </a></p><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Resource AllergyIntolerance &quot;example&quot; </p><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-us-core-allergyintolerance.html\">US Core AllergyIntolerance Profile (version 7.0.0)</a></p></div><p><b>clinicalStatus</b>: Active <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://terminology.hl7.org/5.5.0/CodeSystem-allergyintolerance-clinical.html\">AllergyIntolerance Clinical Status Codes</a>#active)</span></p><p><b>verificationStatus</b>: Confirmed <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://terminology.hl7.org/5.5.0/CodeSystem-allergyintolerance-verification.html\">AllergyIntolerance Verification Status</a>#confirmed)</span></p><p><b>category</b>: medication</p><p><b>criticality</b>: high</p><p><b>code</b>: sulfonamide antibacterial <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"https://browser.ihtsdotools.org/\">SNOMED CT[US]</a>#763875007 &quot;Product containing sulfonamide (product)&quot;)</span></p><p><b>patient</b>: <a href=\"Patient-example.html\">Patient/example: Amy V. Shaw</a> &quot; SHAW&quot;</p><h3>Reactions</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Manifestation</b></td><td><b>Severity</b></td></tr><tr><td style=\"display: none\">*</td><td>skin rash <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"https://browser.ihtsdotools.org/\">SNOMED CT[US]</a>#271807003)</span></td><td>mild</td></tr></table></div>"
        },
        "clinicalStatus": {
            "coding": [
                {
                    "system": "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical",
                    "code": "active"
                }
            ]
        },
        "verificationStatus": {
            "coding": [
                {
                    "system": "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification",
                    "code": "confirmed"
                }
            ]
        },
        "category": ["medication"],
        "criticality": "high",
        "code": {
            "coding": [
                {
                    "system": "http://snomed.info/sct",
                    "version": "http://snomed.info/sct/731000124108",
                    "code": "763875007",
                    "display": "Product containing sulfonamide (product)"
                }
            ],
            "text": "sulfonamide antibacterial"
        },
        "patient": {
            "reference": "Patient/example",
            "display": "Amy V. Shaw"
        },
        "reaction": [
            {
                "manifestation" : [{
                "concept" : {
                    "coding" : [
                            {
                                "system": "http://snomed.info/sct",
                                "version": "http://snomed.info/sct/731000124108",
                                "code": "271807003",
                                "display": "skin rash"
                            }
                        ],
                        "text": "skin rash"
                    }
                }]
            }
        ]
    };
    r5:FHIRValidationError? validationResult = validate(body);
    if validationResult is r5:FHIRValidationError {
        test:assertFail(msg = "Validation failed");
    }
}

@test:Config {}
function testValidateTerminologyError() {
    json body = {
        "resourceType": "AllergyIntolerance",
        "id": "example",
        "text": {
            "status": "generated",
            "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative: AllergyIntolerance</b><a name=\"example\"> </a><a name=\"hcexample\"> </a></p><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Resource AllergyIntolerance &quot;example&quot; </p><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-us-core-allergyintolerance.html\">US Core AllergyIntolerance Profile (version 7.0.0)</a></p></div><p><b>clinicalStatus</b>: Active <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://terminology.hl7.org/5.5.0/CodeSystem-allergyintolerance-clinical.html\">AllergyIntolerance Clinical Status Codes</a>#active)</span></p><p><b>verificationStatus</b>: Confirmed <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://terminology.hl7.org/5.5.0/CodeSystem-allergyintolerance-verification.html\">AllergyIntolerance Verification Status</a>#confirmed)</span></p><p><b>category</b>: medication</p><p><b>criticality</b>: high</p><p><b>code</b>: sulfonamide antibacterial <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"https://browser.ihtsdotools.org/\">SNOMED CT[US]</a>#763875007 &quot;Product containing sulfonamide (product)&quot;)</span></p><p><b>patient</b>: <a href=\"Patient-example.html\">Patient/example: Amy V. Shaw</a> &quot; SHAW&quot;</p><h3>Reactions</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Manifestation</b></td><td><b>Severity</b></td></tr><tr><td style=\"display: none\">*</td><td>skin rash <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"https://browser.ihtsdotools.org/\">SNOMED CT[US]</a>#271807003)</span></td><td>mild</td></tr></table></div>"
        },
        "clinicalStatus": {
            "coding": [
                {
                    "system": "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical",
                    "code": "active"
                }
            ]
        },
        "verificationStatus": {
            "coding": [
                {
                    "system": "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification",
                    "code": "invalid_term" // invalid code
                }
            ]
        },
        "category": ["medication"],
        "criticality": "high",
        "code": {
            "coding": [
                {
                    "system": "http://snomed.info/sct",
                    "version": "http://snomed.info/sct/731000124108",
                    "code": "763875007",
                    "display": "Product containing sulfonamide (product)"
                }
            ],
            "text": "sulfonamide antibacterial"
        },
        "patient": {
            "reference": "Patient/example",
            "display": "Amy V. Shaw"
        },
        "reaction": [
            {
                "manifestation": [
                    {
                        "coding": [
                            {
                                "system": "http://snomed.info/sct",
                                "version": "http://snomed.info/sct/731000124108",
                                "code": "271807003",
                                "display": "skin rash"
                            }
                        ],
                        "text": "skin rash"
                    }
                ],
                "severity": "mild"
            }
        ]
    };
    r5:FHIRValidationError? validationResult = validate(body);
    if validationResult is r5:FHIRValidationError {
        test:assertEquals(validationResult.detail().httpStatusCode, http:STATUS_BAD_REQUEST);
    }
}

@test:Config {}
function testValidateConstrainError() {
    json body = {
        "resourceType": "Patient",
        "id": "591841",
        "meta": {
            "versionId": "1",
            "lastUpdated": "2020-01-22T05:30:13.137+00:00",
            "source": "#KO38Q3spgrJoP5fa"
        },
        "identifier": [
            {
                "type": {
                    "coding": [
                        {
                            "system": "http://hl7.org/fhir/v2/0203",
                            "code": "MR"
                        }
                    ]
                },
                "value": "18e5fd39-7444-4b30-91d4-57226deb2c78"
            }
        ],
        "name": [
            {
                "family": "Cushing",
                "given": ["Caleb"]
            }
        ],
        "birthDate": "aabbcc"
    };
    r5:FHIRValidationError? validationResult = validate(body);
    if validationResult is r5:FHIRValidationError {
        test:assertTrue(validationResult.cause() is constraint:Error);
        test:assertEquals(validationResult.detail().httpStatusCode, http:STATUS_BAD_REQUEST);
    } else {
        test:assertFail(msg = "Expected error is not thrown");
    }
}

@test:Config {}
function testValidateParseError() {
    json body = {
        "id": "591841",
        "meta": {
            "versionId": "1",
            "lastUpdated": "2020-01-22T05:30:13.137+00:00",
            "source": "#KO38Q3spgrJoP5fa"
        },
        "identifier": [
            {
                "type": {
                    "coding": [
                        {
                            "system": "http://hl7.org/fhir/v2/0203",
                            "code": "MR"
                        }
                    ]
                },
                "value": "18e5fd39-7444-4b30-91d4-57226deb2c78"
            }
        ],
        "name": [
            {
                "family": "Cushing",
                "given": ["Caleb"]
            }
        ],
        "birthDate": "2000-01-01"
    };
    r5:FHIRValidationError? validationResult = validate(body);
    if validationResult is r5:FHIRValidationError {
        test:assertTrue(validationResult.cause() is r5:FHIRParseError);
        // test:assertEquals(validationResult.detail().httpStatusCode, http:STATUS_BAD_REQUEST);
    } else {
        test:assertFail(msg = "Expected error is not thrown");
    }
}

@test:Config {}
function testXml() {
    xml x = xml `<test>test</test>`;
    r5:FHIRValidationError? validationResult = validate(x);
    test:assertTrue(validationResult is r5:FHIRValidationError);
    if validationResult is r5:FHIRValidationError {
        test:assertEquals(validationResult.detail().httpStatusCode, http:STATUS_NOT_IMPLEMENTED);
    } else {
        test:assertFail(msg = "Expected error is not thrown");
    }
}

@test:Config {}
function testRecord() {
    international500:Patient p = {
        id: "591841",
        birthDate: "2000-01-01"
    };
    r5:FHIRValidationError? validationResult = validate(p);
    if validationResult is r5:FHIRValidationError {
        test:assertFail(msg = "Validation failed");
    }
}

@test:Config {}
function testRecordConstraintError() {
    international500:Patient p = {
        id: "591841",
        birthDate: "abcdef"
    };
    r5:FHIRValidationError? validationResult = validate(p);
    if validationResult is r5:FHIRValidationError {
        test:assertTrue(validationResult.cause() is constraint:Error);
        test:assertEquals(validationResult.detail().httpStatusCode, http:STATUS_BAD_REQUEST);
    } else {
        test:assertFail(msg = "Expected error is not thrown");
    }
}

@test:Config {}
function testInvalidPayload() {
    record {string name; int age;} random = {name: "vijay", age: 30};
    r5:FHIRValidationError? validationResult = validate(random);
    test:assertTrue(validationResult is r5:FHIRValidationError);
    if validationResult is r5:FHIRValidationError {
        test:assertEquals(validationResult.detail().httpStatusCode, http:STATUS_BAD_REQUEST);
    } else {
        test:assertFail(msg = "Expected error is not thrown");
    }
}

@test:Config {}
function testTargetType1() {
    json patientPayload = {
        "resourceType": "Patient",
        "id": "example-patient",
        "text": {
            "status": "generated",
            "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\">John Doe</div>"
        },
        "identifier": [
            {
                "system": "http://example.com/patient-ids",
                "value": "12345"
            }
        ],
        "extension": [
            {
                "url": "http://hl7.org/fhir/us/core/StructureDefinition/us-core-race",
                "valueCodeableConcept": {
                    "coding": [
                        {
                            "system": "http://hl7.org/fhir/v3/Race",
                            "code": "2106-3",
                            "display": "White"
                        }
                    ]
                }
            }
        ],
        "name": [
            {
                "use": "official",
                "family": "Doe",
                "given": [
                    "John"
                ]
            }
        ],
        "gender": "male",
        "birthDate": "2000-01-01"
    };
    r5:FHIRValidationError? validationResult = validate(patientPayload, international500:Patient);
    if validationResult is r5:FHIRValidationError {
        test:assertFail(msg = "Validation failed");
    }
}

@test:Config {}
function testDatetimeErrorMessageParsing() {
    string errorMessage = string `Validation failed for '$.identifier[0].period.start:pattern' constraint(s).`;
    string[] parsedError = parseConstraintErrors(errorMessage);

    test:assertTrue(parsedError == ["Invalid pattern (constraint) for field 'identifier[0].period.start'"]);
}

@test:Config {}
function testResourceTypeParsing() {
    string errorMessage = string `Failed to find FHIR profile for the resource type : Psatient`;
    string[] parsedError = processFHIRParserErrors(errorMessage);

    test:assertTrue(parsedError == ["Resource type is invalid"]);
}

@test:Config {}
function testMissingFieldParsing() {
    string errorMessage = string `Failed to parse request body as JSON resource due to Invalid JSON content detected, missing required element: "resourceType"`;
    string[] parsedError = processFHIRParserErrors(errorMessage);

    test:assertTrue(parsedError == ["Missing required Element: 'resourceType'"]);
}

@test:Config {}
function testMissingElementParsing() {
    string errorMessage = string `Failed to parse request body as JSON resource due to 'map<json>' value cannot be converted to 'health.fhir.r4.international401:Patient':
                missing required field 'text.status' of type 'ballerinax/health.fhir.r5:4:StatusCode' in record 'health.fhir.r5:Narrative'`;
    string[] parsedError = processFHIRParserErrors(errorMessage);

    test:assertTrue(parsedError == ["Missing required field 'text.status'"]);
}

@test:Config {}
function testInvalidFieldParsing() {
    string errorMessage = string `Failed to parse request body as JSON resource due to 'map<json>' value cannot be converted to 'health.fhir.r4.international401:Patient':
                value of field 'isd' adding to the record 'health.fhir.r4.international401:Patient' should be of type 'health.fhir.r5:Element', found '"example"'`;
    string[] parsedError = processFHIRParserErrors(errorMessage);

    test:assertTrue(parsedError == ["Invalid field 'isd'. Type of field should be 'health.fhir.r5:Element'"]);
}

@test:Config {}
function testInvalidFieldValueParsing() {
    string errorMessage = string `Failed to parse request body as JSON resource due to 'map<json>' value cannot be converted to 'health.fhir.r4.international401:Patient':
                field 'telecom[1].system' in record 'health.fhir.r5:ContactPoint' should be of type 'ballerinax/health.fhir.r5:4:ContactPointSystem', found '1'`;
    string[] parsedError = processFHIRParserErrors(errorMessage);

    test:assertTrue(parsedError == ["Invalid value of field 'telecom[1].system'. Type of value should be 'ballerinax/health.fhir.r5:4:ContactPointSystem'"]);
}

@test:Config {}
function testInvalidArrayElements() {
    string errorMessage = string `Failed to parse request body as JSON resource due to 'map<json>' value cannot be converted to 'health.fhir.r4.international401:Patient':
                array element 'name[0].given[0]' should be of type 'string', found '1'`;
    string[] parsedError = processFHIRParserErrors(errorMessage);

    test:assertTrue(parsedError == ["Invalid array element 'name[0].given[0]'. Type of element should be 'string'"]);
}

@test:Config {}
function testMultitypeScenarioFieldParsing() {
    string errorMessage = string `Failed to parse request body as JSON resource due to 'map<json>' value cannot be converted to 'health.fhir.r4.international401:Patient':
                {
                  missing required field 'contact[0].name._family.extension[0].valueCodeableConcept' of type 'health.fhir.r5:CodeableConcept' in record 'health.fhir.r5:CodeableConceptExtension'     
                  value of field 'valuaeString' adding to the record 'health.fhir.r5:CodeableConceptExtension' should be of type 'health.fhir.r5:Element', found '"VV"'
                or
                  missing required field 'contact[0].name._family.extension[0].valueString' of type 'string' in record 'health.fhir.r5:StringExtension'
                  value of field 'valuaeString' adding to the record 'health.fhir.r5:StringExtension' should be of type 'health.fhir.r5:Element', found '"VV"'
                or
                  missing required field 'contact[0].name._family.extension[0].valueCoding' of type 'health.fhir.r5:Coding' in record 'health.fhir.r5:CodingExtension'
                  value of field 'valuaeString' adding to the record 'health.fhir.r5:CodingExtension' should be of type 'health.fhir.r5:Element', found '"VV"'
                or
                  missing required field 'contact[0].name._family.extension[0].valueCode' of type 'health.fhir.r5:code' in record 'health.fhir.r5:CodeExtension'
                  value of field 'valuaeString' adding to the record 'health.fhir.r5:CodeExtension' should be of type 'health.fhir.r5:Element', found '"VV"'
                or
                  missing required field 'contact[0].name._family.extension[0].valueInteger' of type 'health.fhir.r5:integer' in record 'health.fhir.r5:IntegerExtension'
                  value of field 'valuaeString' adding to the record 'health.fhir.r5:IntegerExtension' should be of type 'health.fhir.r5:Element', found '"VV"'
                or
                  missing required field 'contact[0].name._family.extension[0].valueBase64Binary' of type 'health.fhir.r5:base64Binary' in record 'health.fhir.r5:Base64BinaryExtension'
                  value of field 'valuaeString' adding to the record 'health.fhir.r5:Base64BinaryExtension' should be of type 'health.fhir.r5:Element', found '"VV"'
                or
                  missing required field 'contact[0].name._family.extension[0].valueBoolean' of type 'boolean' in record 'health.fhir.r5:BooleanExtension'
                ...`;
    string[] parsedError = processFHIRParserErrors(errorMessage);

    test:assertTrue(parsedError == ["The field 'valuaeString' should be of type value[x] or url[x] where x is a valid fhir data type"]);
}

@test:Config {}
function testMultitypeScenarioValueParsing() {
    string errorMessage = string `Failed to parse request body as JSON resource due to 'map<json>' value cannot be converted to 'health.fhir.r4.international401:Patient': 
                {
                  missing required field 'contact[0].name._family.extension[0].valueCodeableConcept' of type 'health.fhir.r5:CodeableConcept' in record 'health.fhir.r5:CodeableConceptExtension'     
                  value of field 'valueString' adding to the record 'health.fhir.r5:CodeableConceptExtension' should be of type 'health.fhir.r5:Element', found '1'
                or
                  field 'contact[0].name._family.extension[0].valueString' in record 'health.fhir.r5:StringExtension' should be of type 'string', found '1'
                or
                  missing required field 'contact[0].name._family.extension[0].valueCoding' of type 'health.fhir.r5:Coding' in record 'health.fhir.r5:CodingExtension'
                  value of field 'valueString' adding to the record 'health.fhir.r5:CodingExtension' should be of type 'health.fhir.r5:Element', found '1'
                or
                  missing required field 'contact[0].name._family.extension[0].valueCode' of type 'health.fhir.r5:code' in record 'health.fhir.r5:CodeExtension'
                  value of field 'valueString' adding to the record 'health.fhir.r5:CodeExtension' 
                  should be of type 'health.fhir.r5:Element', found '1'
                or
                  missing required field 'contact[0].name._family.extension[0].valueInteger' of type 'health.fhir.r5:integer' in record 'health.fhir.r5:IntegerExtension'
                  value of field 'valueString' adding to the record 'health.fhir.r5:IntegerExtension' should be of type 'health.fhir.r5:Element', found '1'
                or
                  missing required field 'contact[0].name._family.extension[0].valueBase64Binary' of type 'health.fhir.r5:base64Binary' in record 'health.fhir.r5:Base64BinaryExtension'
                  value of field 'valueString' adding to the record 'health.fhir.r5:Base64BinaryExtension' should be of type 'health.fhir.r5:Element', found '1'
                or
                  missing required field 'contact[0].name._family.extension[0].valueBoolean' of type 'boolean' in record 'health.fhir.r5:BooleanExtension'
                  value of field 'valueString' adding to the record 'health.fhir.r5:BooleanExtension' should be of type 'health.fhir.r5:Element', found '1'
                ...`;
    string[] parsedError = processFHIRParserErrors(errorMessage);

    test:assertTrue(parsedError == ["The field 'contact[0].name._family.extension[0].valueString' should be of type value[x] or url[x] where x is a valid fhir data type"]);
}