Package containing the FHIR R5 service type that can be used for creating FHIR APIs

# FHIR Service Type

Ballerina FHIR service type can be used for developing FHIR APIs. It provides a range of capabilities related to FHIR APIs that make development much easier.

## Capabilitites and features

* Validating search parameters.
* Parsing and validating the request payload when creating FHIR resources.
* Validating content-related headers.
* Executing post-processing logic that can be plugged in.
* Handling errors in all these validations and responding an operation outcome.

## Sample Usage

* Import the required packages.

```ballerina
import ballerinax/health.fhirr5; 
import ballerinax/health.fhir.r5; 
```

* Create a `ResourceAPIConfig` record similar to the following.

```ballerina
final r5:ResourceAPIConfig apiConfig = {
    resourceType: "Patient",
    profiles: [
        "http://hl7.org/fhir/StructureDefinition/Patient"
    ],
    defaultProfile: (),
    searchParameters: [
        {
            name: "name",
            active: true,
            information: {
                description: "A server defined search that may match any of the string fields in the HumanName, including family, give, prefix, suffix, suffix, and/or text",
                builtin: false,
                documentation: "http://hl7.org/fhir/SearchParameter/Patient-name"
            }
        },
        {
            name: "gender",
            active: true,
            information: {
                description: "[Patient](patient.html): Gender of the patient",
                builtin: false,
                documentation: "http://hl7.org/fhir/SearchParameter/individual-gender"
            }
        },
        {
            name: "telecom",
            active: true,
            information: {
                description: "[Patient](patient.html): The value in any kind of telecom details of the patient",
                builtin: false,
                documentation: "http://hl7.org/fhir/SearchParameter/individual-telecom"
            }
        }
    ],
    operations: [],
    serverConfig: (),
    authzConfig: ()
};
```

* Define a FHIR service similar to the following by passing the api-config record created in the previous step.

```ballerina
service / on new fhirr5:Listener(9090, apiConfig) {

    isolated resource function get fhir/r5/Patient(r5:FHIRContext fhirContext) returns r5:Bundle {

        //implementation of the API resource
    }
}
```