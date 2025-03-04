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

public const string PROFILE_BASE_EVENTDEFINITION = "http://hl7.org/fhir/StructureDefinition/EventDefinition";
public const RESOURCE_NAME_EVENTDEFINITION = "EventDefinition";

# FHIR EventDefinition resource record.
#
# + resourceType - The type of the resource describes
# + date - The date (and optionally time) when the event definition was last significantly changed. The date must change when the business version changes and it must change if the status code changes. In addition, it should change when the substantive content of the event definition changes.
# + copyright - A copyright statement relating to the event definition and/or its contents. Copyright statements are generally legal restrictions on the use and publishing of the event definition.
# + extension - May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + approvalDate - The date on which the resource content was approved by the publisher. Approval happens once when the content is officially approved for usage.
# + subjectCodeableConcept - A code or group definition that describes the intended subject of the event definition.
# + purpose - Explanation of why this event definition is needed and why it has been designed as it has.
# + jurisdiction - A legal or geographic region in which the event definition is intended to be used.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + usage - A detailed description of how the event definition is used from a clinical perspective.
# + description - A free text natural language description of the event definition from a consumer's perspective.
# + experimental - A Boolean value to indicate that this event definition is authored for testing purposes (or education/evaluation/marketing) and is not intended to be used for genuine usage.
# + language - The base language in which the resource is written.
# + title - A short, descriptive, user-friendly title for the event definition.
# + versionAlgorithmString - Indicates the mechanism used to compare versions to determine which is more current.
# + contact - Contact details to assist a user in finding and communicating with the publisher.
# + endorser - An individual or organization asserted by the publisher to be responsible for officially endorsing the content for use in some setting.
# + id - The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.
# + text - A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it 'clinically safe' for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.
# + editor - An individual or organization primarily responsible for internal coherence of the content.
# + identifier - A formal identifier that is used to identify this event definition when it is represented in other formats, or referenced in a specification, model, design or an instance.
# + relatedArtifact - Related resources such as additional documentation, justification, or bibliographic references.
# + versionAlgorithmCoding - Indicates the mechanism used to compare versions to determine which is more current.
# + effectivePeriod - The period during which the event definition content was or is planned to be in active use.
# + author - An individiual or organization primarily involved in the creation and maintenance of the content.
# + reviewer - An individual or organization asserted by the publisher to be primarily responsible for review of some aspect of the content.
# + trigger - The trigger element defines when the event occurs. If more than one trigger condition is specified, the event fires whenever any one of the trigger conditions is met.
# + subjectReference - A code or group definition that describes the intended subject of the event definition.
# + 'version - The identifier that is used to identify this version of the event definition when it is referenced in a specification, model, design or instance. This is an arbitrary value managed by the event definition author and is not expected to be globally unique. For example, it might be a timestamp (e.g. yyyymmdd) if a managed version is not available. There is also no expectation that versions can be placed in a lexicographical sequence.
# + url - An absolute URI that is used to identify this event definition when it is referenced in a specification, model, design or an instance; also called its canonical identifier. This SHOULD be globally unique and SHOULD be a literal address at which an authoritative instance of this event definition is (or will be) published. This URL can be the target of a canonical reference. It SHALL remain the same when the event definition is stored on different servers.
# + contained - These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, nor can they have their own independent transaction scope. This is allowed to be a Parameters resource if and only if it is referenced by a resource that provides context/meaning.
# + copyrightLabel - A short string (<50 characters), suitable for inclusion in a page footer that identifies the copyright holder, effective period, and optionally whether rights are resctricted. (e.g. 'All rights reserved', 'Some rights reserved').
# + lastReviewDate - The date on which the resource content was last reviewed. Review happens periodically after approval but does not change the original approval date.
# + meta - The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.
# + subtitle - An explanatory or alternate title for the event definition giving additional information about its content.
# + name - A natural language name identifying the event definition. This name should be usable as an identifier for the module by machine processing applications such as code generation.
# + implicitRules - A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.
# + publisher - The name of the organization or individual responsible for the release and ongoing maintenance of the event definition.
# + topic - Descriptive topics related to the module. Topics provide a high-level categorization of the module that can be useful for filtering and searching.
# + useContext - The content was developed with a focus and intent of supporting the contexts that are listed. These contexts may be general categories (gender, age, ...) or may be references to specific programs (insurance plans, studies, ...) and may be used to assist with indexing and searching for appropriate event definition instances.
# + status - The status of this event definition. Enables tracking the life-cycle of the content.
@r5:ResourceDefinition {
    resourceType: "EventDefinition",
    baseType: r5:DomainResource,
    profile: "http://hl7.org/fhir/StructureDefinition/EventDefinition",
    elements: {
        "date" : {
            name: "date",
            dataType: r5:dateTime,
            min: 0,
            max: 1,
            isArray: false,
            path: "EventDefinition.date"
        },
        "copyright" : {
            name: "copyright",
            dataType: r5:markdown,
            min: 0,
            max: 1,
            isArray: false,
            path: "EventDefinition.copyright"
        },
        "extension" : {
            name: "extension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "EventDefinition.extension"
        },
        "approvalDate" : {
            name: "approvalDate",
            dataType: r5:date,
            min: 0,
            max: 1,
            isArray: false,
            path: "EventDefinition.approvalDate"
        },
        "subjectCodeableConcept" : {
            name: "subjectCodeableConcept",
            dataType: r5:CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            path: "EventDefinition.subject[x]",
            valueSet: "http://hl7.org/fhir/ValueSet/participant-resource-types"
        },
        "purpose" : {
            name: "purpose",
            dataType: r5:markdown,
            min: 0,
            max: 1,
            isArray: false,
            path: "EventDefinition.purpose"
        },
        "jurisdiction" : {
            name: "jurisdiction",
            dataType: r5:CodeableConcept,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "EventDefinition.jurisdiction",
            valueSet: "http://hl7.org/fhir/ValueSet/jurisdiction"
        },
        "modifierExtension" : {
            name: "modifierExtension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "EventDefinition.modifierExtension"
        },
        "usage" : {
            name: "usage",
            dataType: r5:markdown,
            min: 0,
            max: 1,
            isArray: false,
            path: "EventDefinition.usage"
        },
        "description" : {
            name: "description",
            dataType: r5:markdown,
            min: 0,
            max: 1,
            isArray: false,
            path: "EventDefinition.description"
        },
        "experimental" : {
            name: "experimental",
            dataType: boolean,
            min: 0,
            max: 1,
            isArray: false,
            path: "EventDefinition.experimental"
        },
        "language" : {
            name: "language",
            dataType: r5:code,
            min: 0,
            max: 1,
            isArray: false,
            path: "EventDefinition.language",
            valueSet: "http://hl7.org/fhir/ValueSet/all-languages|5.0.0"
        },
        "title" : {
            name: "title",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "EventDefinition.title"
        },
        "versionAlgorithmString" : {
            name: "versionAlgorithmString",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "EventDefinition.versionAlgorithm[x]",
            valueSet: "http://hl7.org/fhir/ValueSet/version-algorithm"
        },
        "contact" : {
            name: "contact",
            dataType: r5:ContactDetail,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "EventDefinition.contact"
        },
        "endorser" : {
            name: "endorser",
            dataType: r5:ContactDetail,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "EventDefinition.endorser"
        },
        "id" : {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "EventDefinition.id"
        },
        "text" : {
            name: "text",
            dataType: r5:Narrative,
            min: 0,
            max: 1,
            isArray: false,
            path: "EventDefinition.text"
        },
        "editor" : {
            name: "editor",
            dataType: r5:ContactDetail,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "EventDefinition.editor"
        },
        "identifier" : {
            name: "identifier",
            dataType: r5:Identifier,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "EventDefinition.identifier"
        },
        "relatedArtifact" : {
            name: "relatedArtifact",
            dataType: r5:RelatedArtifact,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "EventDefinition.relatedArtifact"
        },
        "versionAlgorithmCoding" : {
            name: "versionAlgorithmCoding",
            dataType: r5:Coding,
            min: 0,
            max: 1,
            isArray: false,
            path: "EventDefinition.versionAlgorithm[x]",
            valueSet: "http://hl7.org/fhir/ValueSet/version-algorithm"
        },
        "effectivePeriod" : {
            name: "effectivePeriod",
            dataType: r5:Period,
            min: 0,
            max: 1,
            isArray: false,
            path: "EventDefinition.effectivePeriod"
        },
        "author" : {
            name: "author",
            dataType: r5:ContactDetail,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "EventDefinition.author"
        },
        "reviewer" : {
            name: "reviewer",
            dataType: r5:ContactDetail,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "EventDefinition.reviewer"
        },
        "trigger" : {
            name: "trigger",
            dataType: r5:TriggerDefinition,
            min: 1,
            max: int:MAX_VALUE,
            isArray: true,
            path: "EventDefinition.trigger"
        },
        "subjectReference" : {
            name: "subjectReference",
            dataType: r5:Reference,
            min: 0,
            max: 1,
            isArray: false,
            path: "EventDefinition.subject[x]",
            valueSet: "http://hl7.org/fhir/ValueSet/participant-resource-types"
        },
        "version" : {
            name: "version",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "EventDefinition.version"
        },
        "url" : {
            name: "url",
            dataType: r5:uri,
            min: 0,
            max: 1,
            isArray: false,
            path: "EventDefinition.url"
        },
        "contained" : {
            name: "contained",
            dataType: r5:Resource,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "EventDefinition.contained"
        },
        "copyrightLabel" : {
            name: "copyrightLabel",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "EventDefinition.copyrightLabel"
        },
        "lastReviewDate" : {
            name: "lastReviewDate",
            dataType: r5:date,
            min: 0,
            max: 1,
            isArray: false,
            path: "EventDefinition.lastReviewDate"
        },
        "meta" : {
            name: "meta",
            dataType: r5:Meta,
            min: 0,
            max: 1,
            isArray: false,
            path: "EventDefinition.meta"
        },
        "subtitle" : {
            name: "subtitle",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "EventDefinition.subtitle"
        },
        "name" : {
            name: "name",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "EventDefinition.name"
        },
        "implicitRules" : {
            name: "implicitRules",
            dataType: r5:uri,
            min: 0,
            max: 1,
            isArray: false,
            path: "EventDefinition.implicitRules"
        },
        "publisher" : {
            name: "publisher",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "EventDefinition.publisher"
        },
        "topic" : {
            name: "topic",
            dataType: r5:CodeableConcept,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "EventDefinition.topic",
            valueSet: "http://hl7.org/fhir/ValueSet/definition-topic"
        },
        "useContext" : {
            name: "useContext",
            dataType: r5:UsageContext,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "EventDefinition.useContext"
        },
        "status" : {
            name: "status",
            dataType: EventDefinitionStatus,
            min: 1,
            max: 1,
            isArray: false,
            path: "EventDefinition.status",
            valueSet: "http://hl7.org/fhir/ValueSet/publication-status|5.0.0"
        }
    },
    serializers: {
        'xml: r5:fhirResourceXMLSerializer,
        'json: r5:fhirResourceJsonSerializer
    }
}
public type EventDefinition record {|
    *r5:DomainResource;

    RESOURCE_NAME_EVENTDEFINITION resourceType = RESOURCE_NAME_EVENTDEFINITION;

    r5:dateTime date?;
    r5:markdown copyright?;
    r5:Extension[] extension?;
    r5:date approvalDate?;
    r5:CodeableConcept subjectCodeableConcept?;
    r5:markdown purpose?;
    r5:CodeableConcept[] jurisdiction?;
    r5:Extension[] modifierExtension?;
    r5:markdown usage?;
    r5:markdown description?;
    boolean experimental?;
    r5:code language?;
    string title?;
    string versionAlgorithmString?;
    r5:ContactDetail[] contact?;
    r5:ContactDetail[] endorser?;
    string id?;
    r5:Narrative text?;
    r5:ContactDetail[] editor?;
    r5:Identifier[] identifier?;
    r5:RelatedArtifact[] relatedArtifact?;
    r5:Coding versionAlgorithmCoding?;
    r5:Period effectivePeriod?;
    r5:ContactDetail[] author?;
    r5:ContactDetail[] reviewer?;
    @constraint:Array {
        minLength: {
            value: 1,
            message: "Validation failed for $.EventDefinition.trigger constraint. This field must be an array containing at least one item."
        },
        maxLength: {
            value: 1,
            message: "Validation failed for $.EventDefinition.trigger constraint. This field must be an array containing at most one item."
        }
    }
    r5:TriggerDefinition[] trigger;
    r5:Reference subjectReference?;
    string 'version?;
    r5:uri url?;
    r5:Resource[] contained?;
    string copyrightLabel?;
    r5:date lastReviewDate?;
    r5:Meta meta?;
    string subtitle?;
    string name?;
    r5:uri implicitRules?;
    string publisher?;
    r5:CodeableConcept[] topic?;
    r5:UsageContext[] useContext?;
    EventDefinitionStatus status;
    r5:Element ...;
|};

# EventDefinitionStatus enum
public enum EventDefinitionStatus {
   CODE_STATUS_DRAFT = "draft",
   CODE_STATUS_ACTIVE = "active",
   CODE_STATUS_RETIRED = "retired",
   CODE_STATUS_UNKNOWN = "unknown"
}

