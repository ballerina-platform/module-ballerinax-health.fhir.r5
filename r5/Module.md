# FHIR R5 Base module

## Sample Usage

This section focuses on samples depicting how to use this package to implement FHIR related integrations

### Prerequisites

1. Install Ballerina 2201.10.3 or later

### Parsing FHIR Resource payloads and access the parsed data
Sample below is using the Patient resource in `health.fhir.r5.international500` package.

```ballerina
import ballerina/io;
import ballerinax/health.fhir.r5 as fhir;
import ballerinax/health.fhir.r5.international500;
import ballerinax/health.fhir.r5.parser as fhirParser;

public function main() returns error? {
    // The following example is a simple serialized Patient resource to parse
    json input = {
        "resourceType": "Patient",
        "name": [
            {
                "family": "Simpson"
            }
        ]
    };

    // Parse it - you can pass the input (as a string or a json) and the
    // type of the resource you want to parse.
    international500:Patient patient = check fhirParser:parse(input).ensureType();

    // Access the parsed data
    fhir:HumanName[]? names = patient.name;
    if names is () || names.length() == 0 {
        return error("Failed to parse the names");
    }
    io:println("Family Name: ", names[0]);
}
```