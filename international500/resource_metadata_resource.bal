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

public const string PROFILE_BASE_METADATARESOURCE = "http://hl7.org/fhir/StructureDefinition/MetadataResource";
public const RESOURCE_NAME_METADATARESOURCE = "MetadataResource";

# FHIR MetadataResource resource record.
#
# + resourceType - The type of the resource describes
# + date - The date (and optionally time) when the {{title}} was last significantly changed. The date must change when the business version changes and it must change if the status code changes. In addition, it should change when the substantive content of the {{title}} changes.
# + copyright - A copyright statement relating to the {{title}} and/or its contents. Copyright statements are generally legal restrictions on the use and publishing of the {{title}}.
# + extension - May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + approvalDate - The date on which the resource content was approved by the publisher. Approval happens once when the content is officially approved for usage.
# + purpose - Explanation of why this {{title}} is needed and why it has been designed as it has.
# + jurisdiction - A legal or geographic region in which the {{title}} is intended to be used.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + description - A free text natural language description of the {{title}} from a consumer's perspective.
# + experimental - A Boolean value to indicate that this {{title}} is authored for testing purposes (or education/evaluation/marketing) and is not intended for genuine usage.
# + language - The base language in which the resource is written.
# + title - A short, descriptive, user-friendly title for the {{title}}.
# + versionAlgorithmString - Indicates the mechanism used to compare versions to determine which is more current.
# + contact - Contact details to assist a user in finding and communicating with the publisher.
# + endorser - An individual or organization asserted by the publisher to be responsible for officially endorsing the {{title}} for use in some setting.
# + id - The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.
# + text - A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it 'clinically safe' for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.
# + editor - An individual or organization primarily responsible for internal coherence of the {{title}}.
# + identifier - A formal identifier that is used to identify this {{title}} when it is represented in other formats, or referenced in a specification, model, design or an instance.
# + relatedArtifact - Related artifacts such as additional documentation, justification, dependencies, bibliographic references, and predecessor and successor artifacts.
# + versionAlgorithmCoding - Indicates the mechanism used to compare versions to determine which is more current.
# + effectivePeriod - The period during which the {{title}} content was or is planned to be in active use.
# + author - An individiual or organization primarily involved in the creation and maintenance of the {{title}}.
# + reviewer - An individual or organization asserted by the publisher to be primarily responsible for review of some aspect of the {{title}}.
# + 'version - The identifier that is used to identify this version of the {{title}} when it is referenced in a specification, model, design or instance. This is an arbitrary value managed by the {{title}} author and is not expected to be globally unique. For example, it might be a timestamp (e.g. yyyymmdd) if a managed version is not available. There is also no expectation that versions can be placed in a lexicographical sequence without additional knowledge. (See the versionAlgorithm element.)
# + url - An absolute URI that is used to identify this {{title}} when it is referenced in a specification, model, design or an instance; also called its canonical identifier. This SHOULD be globally unique and SHOULD be a literal address at which an authoritative instance of this {{title}} is (or will be) published. This URL can be the target of a canonical reference. It SHALL remain the same when the {{title}} is stored on different servers.
# + contained - These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, nor can they have their own independent transaction scope. This is allowed to be a Parameters resource if and only if it is referenced by a resource that provides context/meaning.
# + copyrightLabel - A short string (<50 characters), suitable for inclusion in a page footer that identifies the copyright holder, effective period, and optionally whether rights are resctricted. (e.g. 'All rights reserved', 'Some rights reserved').
# + lastReviewDate - The date on which the resource content was last reviewed. Review happens periodically after approval but does not change the original approval date.
# + meta - The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.
# + name - A natural language name identifying the {{title}}. This name should be usable as an identifier for the resource by machine processing applications such as code generation.
# + implicitRules - A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.
# + publisher - The name of the organization or individual responsible for the release and ongoing maintenance of the {{title}}.
# + topic - Descriptive topics related to the content of the {{title}}. Topics provide a high-level categorization as well as keywords for the {{title}} that can be useful for filtering and searching.
# + useContext - The content was developed with a focus and intent of supporting the contexts that are listed. These contexts may be general categories (gender, age, ...) or may be references to specific programs (insurance plans, studies, ...) and may be used to assist with indexing and searching for appropriate {{title}}s.
# + status - The current state of this {{title}}.
@r5:ResourceDefinition {
    resourceType: "MetadataResource",
    baseType: r5:DomainResource,
    profile: "http://hl7.org/fhir/StructureDefinition/MetadataResource",
    elements: {
        "date" : {
            name: "date",
            dataType: r5:dateTime,
            min: 0,
            max: 1,
            isArray: false,
            path: "MetadataResource.date"
        },
        "copyright" : {
            name: "copyright",
            dataType: r5:markdown,
            min: 0,
            max: 1,
            isArray: false,
            path: "MetadataResource.copyright"
        },
        "extension" : {
            name: "extension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "MetadataResource.extension"
        },
        "approvalDate" : {
            name: "approvalDate",
            dataType: r5:date,
            min: 0,
            max: 1,
            isArray: false,
            path: "MetadataResource.approvalDate"
        },
        "purpose" : {
            name: "purpose",
            dataType: r5:markdown,
            min: 0,
            max: 1,
            isArray: false,
            path: "MetadataResource.purpose"
        },
        "jurisdiction" : {
            name: "jurisdiction",
            dataType: r5:CodeableConcept,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "MetadataResource.jurisdiction",
            valueSet: "http://hl7.org/fhir/ValueSet/jurisdiction"
        },
        "modifierExtension" : {
            name: "modifierExtension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "MetadataResource.modifierExtension"
        },
        "description" : {
            name: "description",
            dataType: r5:markdown,
            min: 0,
            max: 1,
            isArray: false,
            path: "MetadataResource.description"
        },
        "experimental" : {
            name: "experimental",
            dataType: boolean,
            min: 0,
            max: 1,
            isArray: false,
            path: "MetadataResource.experimental"
        },
        "language" : {
            name: "language",
            dataType: r5:code,
            min: 0,
            max: 1,
            isArray: false,
            path: "MetadataResource.language",
            valueSet: "http://hl7.org/fhir/ValueSet/all-languages|5.0.0"
        },
        "title" : {
            name: "title",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "MetadataResource.title"
        },
        "versionAlgorithmString" : {
            name: "versionAlgorithmString",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "MetadataResource.versionAlgorithm[x]",
            valueSet: "http://hl7.org/fhir/ValueSet/version-algorithm"
        },
        "contact" : {
            name: "contact",
            dataType: r5:ContactDetail,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "MetadataResource.contact"
        },
        "endorser" : {
            name: "endorser",
            dataType: r5:ContactDetail,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "MetadataResource.endorser"
        },
        "id" : {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "MetadataResource.id"
        },
        "text" : {
            name: "text",
            dataType: r5:Narrative,
            min: 0,
            max: 1,
            isArray: false,
            path: "MetadataResource.text"
        },
        "editor" : {
            name: "editor",
            dataType: r5:ContactDetail,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "MetadataResource.editor"
        },
        "identifier" : {
            name: "identifier",
            dataType: r5:Identifier,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "MetadataResource.identifier"
        },
        "relatedArtifact" : {
            name: "relatedArtifact",
            dataType: r5:RelatedArtifact,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "MetadataResource.relatedArtifact"
        },
        "versionAlgorithmCoding" : {
            name: "versionAlgorithmCoding",
            dataType: r5:Coding,
            min: 0,
            max: 1,
            isArray: false,
            path: "MetadataResource.versionAlgorithm[x]",
            valueSet: "http://hl7.org/fhir/ValueSet/version-algorithm"
        },
        "effectivePeriod" : {
            name: "effectivePeriod",
            dataType: r5:Period,
            min: 0,
            max: 1,
            isArray: false,
            path: "MetadataResource.effectivePeriod"
        },
        "author" : {
            name: "author",
            dataType: r5:ContactDetail,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "MetadataResource.author"
        },
        "reviewer" : {
            name: "reviewer",
            dataType: r5:ContactDetail,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "MetadataResource.reviewer"
        },
        "version" : {
            name: "version",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "MetadataResource.version"
        },
        "url" : {
            name: "url",
            dataType: r5:uri,
            min: 0,
            max: 1,
            isArray: false,
            path: "MetadataResource.url"
        },
        "contained" : {
            name: "contained",
            dataType: r5:Resource,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "MetadataResource.contained"
        },
        "copyrightLabel" : {
            name: "copyrightLabel",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "MetadataResource.copyrightLabel"
        },
        "lastReviewDate" : {
            name: "lastReviewDate",
            dataType: r5:date,
            min: 0,
            max: 1,
            isArray: false,
            path: "MetadataResource.lastReviewDate"
        },
        "meta" : {
            name: "meta",
            dataType: r5:Meta,
            min: 0,
            max: 1,
            isArray: false,
            path: "MetadataResource.meta"
        },
        "name" : {
            name: "name",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "MetadataResource.name"
        },
        "implicitRules" : {
            name: "implicitRules",
            dataType: r5:uri,
            min: 0,
            max: 1,
            isArray: false,
            path: "MetadataResource.implicitRules"
        },
        "publisher" : {
            name: "publisher",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "MetadataResource.publisher"
        },
        "topic" : {
            name: "topic",
            dataType: r5:CodeableConcept,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "MetadataResource.topic",
            valueSet: "http://hl7.org/fhir/ValueSet/definition-topic"
        },
        "useContext" : {
            name: "useContext",
            dataType: r5:UsageContext,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "MetadataResource.useContext"
        },
        "status" : {
            name: "status",
            dataType: MetadataResourceStatus,
            min: 1,
            max: 1,
            isArray: false,
            path: "MetadataResource.status",
            valueSet: "http://hl7.org/fhir/ValueSet/publication-status|5.0.0"
        }
    },
    serializers: {
        'xml: r5:fhirResourceXMLSerializer,
        'json: r5:fhirResourceJsonSerializer
    }
}
public type MetadataResource record {|
    *r5:DomainResource;

    RESOURCE_NAME_METADATARESOURCE resourceType = RESOURCE_NAME_METADATARESOURCE;

    r5:dateTime date?;
    r5:markdown copyright?;
    r5:Extension[] extension?;
    r5:date approvalDate?;
    r5:markdown purpose?;
    r5:CodeableConcept[] jurisdiction?;
    r5:Extension[] modifierExtension?;
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
    string 'version?;
    r5:uri url?;
    r5:Resource[] contained?;
    string copyrightLabel?;
    r5:date lastReviewDate?;
    r5:Meta meta?;
    string name?;
    r5:uri implicitRules?;
    string publisher?;
    r5:CodeableConcept[] topic?;
    r5:UsageContext[] useContext?;
    MetadataResourceStatus status;
    r5:Element ...;
|};

# MetadataResourceStatus enum
public enum MetadataResourceStatus {
   CODE_STATUS_DRAFT = "draft",
   CODE_STATUS_ACTIVE = "active",
   CODE_STATUS_RETIRED = "retired",
   CODE_STATUS_UNKNOWN = "unknown"
}

