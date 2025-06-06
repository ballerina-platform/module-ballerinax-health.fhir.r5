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

// AUTO-GENERATED FILE.
// This file is auto-generated by Ballerina.

import ballerina/constraint;
import ballerinax/health.fhir.r5;

public const string PROFILE_BASE_ENDPOINT = "http://hl7.org/fhir/StructureDefinition/Endpoint";
public const RESOURCE_NAME_ENDPOINT = "Endpoint";

# FHIR Endpoint resource record.
#
# + resourceType - The type of the resource describes
# + identifier - Identifier for the organization that is used to identify the endpoint across multiple disparate systems.
# + extension - May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + period - The interval during which the endpoint is expected to be operational.
# + address - The uri that describes the actual end-point to connect to.
# + environmentType - The type of environment(s) exposed at this endpoint (dev, prod, test, etc.).
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + description - The description of the endpoint and what it is for (typically used as supplemental information in an endpoint directory describing its usage/purpose).
# + language - The base language in which the resource is written.
# + connectionType - A coded value that represents the technical details of the usage of this endpoint, such as what WSDLs should be used in what way. (e.g. XDS.b/DICOM/cds-hook).
# + contained - These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, nor can they have their own independent transaction scope. This is allowed to be a Parameters resource if and only if it is referenced by a resource that provides context/meaning.
# + managingOrganization - The organization that manages this endpoint (even if technically another organization is hosting this in the cloud, it is the organization associated with the data).
# + payload - The set of payloads that are provided/available at this endpoint.
# + meta - The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.
# + contact - Contact details for a human to contact about the endpoint. The primary use of this for system administrator troubleshooting.
# + name - A friendly name that this endpoint can be referred to with.
# + header - Additional headers / information to send as part of the notification.
# + implicitRules - A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.
# + id - The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.
# + text - A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it 'clinically safe' for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.
# + status - The endpoint status represents the general expected availability of an endpoint.
@r5:ResourceDefinition {
    resourceType: "Endpoint",
    baseType: r5:DomainResource,
    profile: "http://hl7.org/fhir/StructureDefinition/Endpoint",
    elements: {
        "identifier" : {
            name: "identifier",
            dataType: r5:Identifier,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Endpoint.identifier"
        },
        "extension" : {
            name: "extension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Endpoint.extension"
        },
        "period" : {
            name: "period",
            dataType: r5:Period,
            min: 0,
            max: 1,
            isArray: false,
            path: "Endpoint.period"
        },
        "address" : {
            name: "address",
            dataType: r5:urlType,
            min: 1,
            max: 1,
            isArray: false,
            path: "Endpoint.address"
        },
        "environmentType" : {
            name: "environmentType",
            dataType: r5:CodeableConcept,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Endpoint.environmentType",
            valueSet: "http://hl7.org/fhir/ValueSet/endpoint-environment"
        },
        "modifierExtension" : {
            name: "modifierExtension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Endpoint.modifierExtension"
        },
        "description" : {
            name: "description",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "Endpoint.description"
        },
        "language" : {
            name: "language",
            dataType: r5:code,
            min: 0,
            max: 1,
            isArray: false,
            path: "Endpoint.language",
            valueSet: "http://hl7.org/fhir/ValueSet/all-languages|5.0.0"
        },
        "connectionType" : {
            name: "connectionType",
            dataType: r5:CodeableConcept,
            min: 1,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Endpoint.connectionType",
            valueSet: "http://hl7.org/fhir/ValueSet/endpoint-connection-type"
        },
        "contained" : {
            name: "contained",
            dataType: r5:Resource,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Endpoint.contained"
        },
        "managingOrganization" : {
            name: "managingOrganization",
            dataType: r5:Reference,
            min: 0,
            max: 1,
            isArray: false,
            path: "Endpoint.managingOrganization"
        },
        "payload" : {
            name: "payload",
            dataType: EndpointPayload,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Endpoint.payload"
        },
        "meta" : {
            name: "meta",
            dataType: r5:Meta,
            min: 0,
            max: 1,
            isArray: false,
            path: "Endpoint.meta"
        },
        "contact" : {
            name: "contact",
            dataType: r5:ContactPoint,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Endpoint.contact"
        },
        "name" : {
            name: "name",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "Endpoint.name"
        },
        "header" : {
            name: "header",
            dataType: string,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Endpoint.header"
        },
        "implicitRules" : {
            name: "implicitRules",
            dataType: r5:uri,
            min: 0,
            max: 1,
            isArray: false,
            path: "Endpoint.implicitRules"
        },
        "id" : {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "Endpoint.id"
        },
        "text" : {
            name: "text",
            dataType: r5:Narrative,
            min: 0,
            max: 1,
            isArray: false,
            path: "Endpoint.text"
        },
        "status" : {
            name: "status",
            dataType: EndpointStatus,
            min: 1,
            max: 1,
            isArray: false,
            path: "Endpoint.status",
            valueSet: "http://hl7.org/fhir/ValueSet/endpoint-status|5.0.0"
        }
    },
    serializers: {
        'xml: r5:fhirResourceXMLSerializer,
        'json: r5:fhirResourceJsonSerializer
    }
}
public type Endpoint record {|
    *r5:DomainResource;

    RESOURCE_NAME_ENDPOINT resourceType = RESOURCE_NAME_ENDPOINT;

    r5:Identifier[] identifier?;
    r5:Extension[] extension?;
    r5:Period period?;
    r5:urlType address;
    r5:CodeableConcept[] environmentType?;
    r5:Extension[] modifierExtension?;
    string description?;
    r5:code language?;
    @constraint:Array {
        minLength: {
            value: 1,
            message: "Validation failed for $.Endpoint.connectionType constraint. This field must be an array containing at least one item."
        },
        maxLength: {
            value: 1,
            message: "Validation failed for $.Endpoint.connectionType constraint. This field must be an array containing at most one item."
        }
    }
    r5:CodeableConcept[] connectionType;
    r5:Resource[] contained?;
    r5:Reference managingOrganization?;
    EndpointPayload[] payload?;
    r5:Meta meta?;
    r5:ContactPoint[] contact?;
    string name?;
    string[] header?;
    r5:uri implicitRules?;
    string id?;
    r5:Narrative text?;
    EndpointStatus status;
    r5:Element ...;
|};

# EndpointStatus enum
public enum EndpointStatus {
   CODE_STATUS_TEST = "test",
   CODE_STATUS_ACTIVE = "active",
   CODE_STATUS_ERROR = "error",
   CODE_STATUS_ENTERED_IN_ERROR = "entered-in-error",
   CODE_STATUS_SUSPENDED = "suspended",
   CODE_STATUS_OFF = "off"
}

# FHIR EndpointPayload datatype record.
#
# + extension - May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + id - Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
# + mimeType - The mime type to send the payload in - e.g. application/fhir+xml, application/fhir+json. If the mime type is not specified, then the sender could send any content (including no content depending on the connectionType).
# + 'type - The payload type describes the acceptable content that can be communicated on the endpoint.
@r5:DataTypeDefinition {
    name: "EndpointPayload",
    baseType: (),
    elements: {
        "extension": {
            name: "extension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
            path: "Endpoint.payload.extension"
        },
        "modifierExtension": {
            name: "modifierExtension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).",
            path: "Endpoint.payload.modifierExtension"
        },
        "id": {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
            path: "Endpoint.payload.id"
        },
        "mimeType": {
            name: "mimeType",
            dataType: r5:code,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "The mime type to send the payload in - e.g. application/fhir+xml, application/fhir+json. If the mime type is not specified, then the sender could send any content (including no content depending on the connectionType).",
            path: "Endpoint.payload.mimeType"
        },
        "type": {
            name: "type",
            dataType: r5:CodeableConcept,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "The payload type describes the acceptable content that can be communicated on the endpoint.",
            path: "Endpoint.payload.type"
        }
    },
    serializers: {
        'xml: r5:complexDataTypeXMLSerializer,
        'json: r5:complexDataTypeJsonSerializer
    }
}
public type EndpointPayload record {|
    *r5:BackboneElement;

    r5:Extension[] extension?;
    r5:Extension[] modifierExtension?;
    string id?;
    r5:code[] mimeType?;
    r5:CodeableConcept[] 'type?;
|};

