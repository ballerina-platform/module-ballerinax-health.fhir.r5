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

import ballerinax/health.fhir.r5;

public const string PROFILE_BASE_BASIC = "http://hl7.org/fhir/StructureDefinition/Basic";
public const RESOURCE_NAME_BASIC = "Basic";

# FHIR Basic resource record.
#
# + resourceType - The type of the resource describes
# + identifier - Identifier assigned to the resource for business purposes, outside the context of FHIR.
# + extension - May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + code - Identifies the 'type' of resource - equivalent to the resource name for other resources.
# + author - Indicates who was responsible for creating the resource instance.
# + created - Identifies when the resource was first created.
# + subject - Identifies the patient, practitioner, device or any other resource that is the 'focus' of this resource.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + language - The base language in which the resource is written.
# + contained - These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, nor can they have their own independent transaction scope. This is allowed to be a Parameters resource if and only if it is referenced by a resource that provides context/meaning.
# + meta - The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.
# + implicitRules - A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.
# + id - The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.
# + text - A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it 'clinically safe' for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.
@r5:ResourceDefinition {
    resourceType: "Basic",
    baseType: r5:DomainResource,
    profile: "http://hl7.org/fhir/StructureDefinition/Basic",
    elements: {
        "identifier" : {
            name: "identifier",
            dataType: r5:Identifier,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Basic.identifier"
        },
        "extension" : {
            name: "extension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Basic.extension"
        },
        "code" : {
            name: "code",
            dataType: r5:CodeableConcept,
            min: 1,
            max: 1,
            isArray: false,
            path: "Basic.code",
            valueSet: "http://hl7.org/fhir/ValueSet/basic-resource-type"
        },
        "author" : {
            name: "author",
            dataType: r5:Reference,
            min: 0,
            max: 1,
            isArray: false,
            path: "Basic.author"
        },
        "created" : {
            name: "created",
            dataType: r5:dateTime,
            min: 0,
            max: 1,
            isArray: false,
            path: "Basic.created"
        },
        "subject" : {
            name: "subject",
            dataType: r5:Reference,
            min: 0,
            max: 1,
            isArray: false,
            path: "Basic.subject"
        },
        "modifierExtension" : {
            name: "modifierExtension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Basic.modifierExtension"
        },
        "language" : {
            name: "language",
            dataType: r5:code,
            min: 0,
            max: 1,
            isArray: false,
            path: "Basic.language",
            valueSet: "http://hl7.org/fhir/ValueSet/all-languages|5.0.0"
        },
        "contained" : {
            name: "contained",
            dataType: r5:Resource,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Basic.contained"
        },
        "meta" : {
            name: "meta",
            dataType: r5:Meta,
            min: 0,
            max: 1,
            isArray: false,
            path: "Basic.meta"
        },
        "implicitRules" : {
            name: "implicitRules",
            dataType: r5:uri,
            min: 0,
            max: 1,
            isArray: false,
            path: "Basic.implicitRules"
        },
        "id" : {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "Basic.id"
        },
        "text" : {
            name: "text",
            dataType: r5:Narrative,
            min: 0,
            max: 1,
            isArray: false,
            path: "Basic.text"
        }
    },
    serializers: {
        'xml: r5:fhirResourceXMLSerializer,
        'json: r5:fhirResourceJsonSerializer
    }
}
public type Basic record {|
    *r5:DomainResource;

    RESOURCE_NAME_BASIC resourceType = RESOURCE_NAME_BASIC;

    r5:Identifier[] identifier?;
    r5:Extension[] extension?;
    r5:CodeableConcept code;
    r5:Reference author?;
    r5:dateTime created?;
    r5:Reference subject?;
    r5:Extension[] modifierExtension?;
    r5:code language?;
    r5:Resource[] contained?;
    r5:Meta meta?;
    r5:uri implicitRules?;
    string id?;
    r5:Narrative text?;
    r5:Element ...;
|};

