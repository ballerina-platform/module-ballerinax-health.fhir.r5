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

public const string PROFILE_BASE_EPISODEOFCARE = "http://hl7.org/fhir/StructureDefinition/EpisodeOfCare";
public const RESOURCE_NAME_EPISODEOFCARE = "EpisodeOfCare";

# FHIR EpisodeOfCare resource record.
#
# + resourceType - The type of the resource describes
# + identifier - The EpisodeOfCare may be known by different identifiers for different contexts of use, such as when an external agency is tracking the Episode for funding purposes.
# + reason - The list of medical reasons that are expected to be addressed during the episode of care.
# + extension - May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + period - The interval during which the managing organization assumes the defined responsibility.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + diagnosis - The list of medical conditions that were addressed during the episode of care.
# + careManager - The practitioner that is the care manager/care coordinator for this patient.
# + language - The base language in which the resource is written.
# + 'type - A classification of the type of episode of care; e.g. specialist referral, disease management, type of funded care.
# + contained - These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, nor can they have their own independent transaction scope. This is allowed to be a Parameters resource if and only if it is referenced by a resource that provides context/meaning.
# + statusHistory - The history of statuses that the EpisodeOfCare has been through (without requiring processing the history of the resource).
# + managingOrganization - The organization that has assumed the specific responsibilities for care coordination, care delivery, or other services for the specified duration.
# + referralRequest - Referral Request(s) that are fulfilled by this EpisodeOfCare, incoming referrals.
# + meta - The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.
# + patient - The patient who is the focus of this episode of care.
# + implicitRules - A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.
# + id - The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.
# + text - A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it 'clinically safe' for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.
# + account - The set of accounts that may be used for billing for this EpisodeOfCare.
# + careTeam - The list of practitioners that may be facilitating this episode of care for specific purposes.
# + status - planned | waitlist | active | onhold | finished | cancelled.
@r5:ResourceDefinition {
    resourceType: "EpisodeOfCare",
    baseType: r5:DomainResource,
    profile: "http://hl7.org/fhir/StructureDefinition/EpisodeOfCare",
    elements: {
        "identifier" : {
            name: "identifier",
            dataType: r5:Identifier,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "EpisodeOfCare.identifier"
        },
        "reason" : {
            name: "reason",
            dataType: EpisodeOfCareReason,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "EpisodeOfCare.reason"
        },
        "extension" : {
            name: "extension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "EpisodeOfCare.extension"
        },
        "period" : {
            name: "period",
            dataType: r5:Period,
            min: 0,
            max: 1,
            isArray: false,
            path: "EpisodeOfCare.period"
        },
        "modifierExtension" : {
            name: "modifierExtension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "EpisodeOfCare.modifierExtension"
        },
        "diagnosis" : {
            name: "diagnosis",
            dataType: EpisodeOfCareDiagnosis,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "EpisodeOfCare.diagnosis"
        },
        "careManager" : {
            name: "careManager",
            dataType: r5:Reference,
            min: 0,
            max: 1,
            isArray: false,
            path: "EpisodeOfCare.careManager"
        },
        "language" : {
            name: "language",
            dataType: r5:code,
            min: 0,
            max: 1,
            isArray: false,
            path: "EpisodeOfCare.language",
            valueSet: "http://hl7.org/fhir/ValueSet/all-languages|5.0.0"
        },
        "type" : {
            name: "type",
            dataType: r5:CodeableConcept,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "EpisodeOfCare.type",
            valueSet: "http://hl7.org/fhir/ValueSet/episodeofcare-type"
        },
        "contained" : {
            name: "contained",
            dataType: r5:Resource,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "EpisodeOfCare.contained"
        },
        "statusHistory" : {
            name: "statusHistory",
            dataType: EpisodeOfCareStatusHistory,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "EpisodeOfCare.statusHistory"
        },
        "managingOrganization" : {
            name: "managingOrganization",
            dataType: r5:Reference,
            min: 0,
            max: 1,
            isArray: false,
            path: "EpisodeOfCare.managingOrganization"
        },
        "referralRequest" : {
            name: "referralRequest",
            dataType: r5:Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "EpisodeOfCare.referralRequest"
        },
        "meta" : {
            name: "meta",
            dataType: r5:Meta,
            min: 0,
            max: 1,
            isArray: false,
            path: "EpisodeOfCare.meta"
        },
        "patient" : {
            name: "patient",
            dataType: r5:Reference,
            min: 1,
            max: 1,
            isArray: false,
            path: "EpisodeOfCare.patient"
        },
        "implicitRules" : {
            name: "implicitRules",
            dataType: r5:uri,
            min: 0,
            max: 1,
            isArray: false,
            path: "EpisodeOfCare.implicitRules"
        },
        "id" : {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "EpisodeOfCare.id"
        },
        "text" : {
            name: "text",
            dataType: r5:Narrative,
            min: 0,
            max: 1,
            isArray: false,
            path: "EpisodeOfCare.text"
        },
        "account" : {
            name: "account",
            dataType: r5:Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "EpisodeOfCare.account"
        },
        "careTeam" : {
            name: "careTeam",
            dataType: r5:Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "EpisodeOfCare.careTeam"
        },
        "status" : {
            name: "status",
            dataType: EpisodeOfCareStatus,
            min: 1,
            max: 1,
            isArray: false,
            path: "EpisodeOfCare.status",
            valueSet: "http://hl7.org/fhir/ValueSet/episode-of-care-status|5.0.0"
        }
    },
    serializers: {
        'xml: r5:fhirResourceXMLSerializer,
        'json: r5:fhirResourceJsonSerializer
    }
}
public type EpisodeOfCare record {|
    *r5:DomainResource;

    RESOURCE_NAME_EPISODEOFCARE resourceType = RESOURCE_NAME_EPISODEOFCARE;

    r5:Identifier[] identifier?;
    EpisodeOfCareReason[] reason?;
    r5:Extension[] extension?;
    r5:Period period?;
    r5:Extension[] modifierExtension?;
    EpisodeOfCareDiagnosis[] diagnosis?;
    r5:Reference careManager?;
    r5:code language?;
    r5:CodeableConcept[] 'type?;
    r5:Resource[] contained?;
    EpisodeOfCareStatusHistory[] statusHistory?;
    r5:Reference managingOrganization?;
    r5:Reference[] referralRequest?;
    r5:Meta meta?;
    r5:Reference patient;
    r5:uri implicitRules?;
    string id?;
    r5:Narrative text?;
    r5:Reference[] account?;
    r5:Reference[] careTeam?;
    EpisodeOfCareStatus status;
    r5:Element ...;
|};

# FHIR EpisodeOfCareReason datatype record.
#
# + extension - May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + use - What the reason value should be used as e.g. Chief Complaint, Health Concern, Health Maintenance (including screening).
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + id - Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
# + value - The medical reason that is expected to be addressed during the episode of care, expressed as a text, code or a reference to another resource.
@r5:DataTypeDefinition {
    name: "EpisodeOfCareReason",
    baseType: (),
    elements: {
        "extension": {
            name: "extension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
            path: "EpisodeOfCare.reason.extension"
        },
        "use": {
            name: "use",
            dataType: r5:CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            description: "What the reason value should be used as e.g. Chief Complaint, Health Concern, Health Maintenance (including screening).",
            path: "EpisodeOfCare.reason.use"
        },
        "modifierExtension": {
            name: "modifierExtension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).",
            path: "EpisodeOfCare.reason.modifierExtension"
        },
        "id": {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
            path: "EpisodeOfCare.reason.id"
        },
        "value": {
            name: "value",
            dataType: r5:CodeableReference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "The medical reason that is expected to be addressed during the episode of care, expressed as a text, code or a reference to another resource.",
            path: "EpisodeOfCare.reason.value"
        }
    },
    serializers: {
        'xml: r5:complexDataTypeXMLSerializer,
        'json: r5:complexDataTypeJsonSerializer
    }
}
public type EpisodeOfCareReason record {|
    *r5:BackboneElement;

    r5:Extension[] extension?;
    r5:CodeableConcept use?;
    r5:Extension[] modifierExtension?;
    string id?;
    r5:CodeableReference[] value?;
|};

# EpisodeOfCareStatusHistoryStatus enum
public enum EpisodeOfCareStatusHistoryStatus {
   CODE_STATUS_ONHOLD = "onhold",
   CODE_STATUS_WAITLIST = "waitlist",
   CODE_STATUS_ACTIVE = "active",
   CODE_STATUS_CANCELLED = "cancelled",
   CODE_STATUS_FINISHED = "finished",
   CODE_STATUS_PLANNED = "planned",
   CODE_STATUS_ENTERED_IN_ERROR = "entered-in-error"
}

# FHIR EpisodeOfCareStatusHistory datatype record.
#
# + extension - May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + period - The period during this EpisodeOfCare that the specific status applied.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + id - Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
# + status - planned | waitlist | active | onhold | finished | cancelled.
@r5:DataTypeDefinition {
    name: "EpisodeOfCareStatusHistory",
    baseType: (),
    elements: {
        "extension": {
            name: "extension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
            path: "EpisodeOfCare.statusHistory.extension"
        },
        "period": {
            name: "period",
            dataType: r5:Period,
            min: 1,
            max: 1,
            isArray: false,
            description: "The period during this EpisodeOfCare that the specific status applied.",
            path: "EpisodeOfCare.statusHistory.period"
        },
        "modifierExtension": {
            name: "modifierExtension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).",
            path: "EpisodeOfCare.statusHistory.modifierExtension"
        },
        "id": {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
            path: "EpisodeOfCare.statusHistory.id"
        },
        "status": {
            name: "status",
            dataType: EpisodeOfCareStatusHistoryStatus,
            min: 1,
            max: 1,
            isArray: false,
            description: "planned | waitlist | active | onhold | finished | cancelled.",
            path: "EpisodeOfCare.statusHistory.status"
        }
    },
    serializers: {
        'xml: r5:complexDataTypeXMLSerializer,
        'json: r5:complexDataTypeJsonSerializer
    }
}
public type EpisodeOfCareStatusHistory record {|
    *r5:BackboneElement;

    r5:Extension[] extension?;
    r5:Period period;
    r5:Extension[] modifierExtension?;
    string id?;
    EpisodeOfCareStatusHistoryStatus status;
|};

# FHIR EpisodeOfCareDiagnosis datatype record.
#
# + condition - The medical condition that was addressed during the episode of care, expressed as a text, code or a reference to another resource.
# + extension - May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + use - Role that this diagnosis has within the episode of care (e.g. admission, billing, discharge …).
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + id - Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
@r5:DataTypeDefinition {
    name: "EpisodeOfCareDiagnosis",
    baseType: (),
    elements: {
        "condition": {
            name: "condition",
            dataType: r5:CodeableReference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "The medical condition that was addressed during the episode of care, expressed as a text, code or a reference to another resource.",
            path: "EpisodeOfCare.diagnosis.condition"
        },
        "extension": {
            name: "extension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
            path: "EpisodeOfCare.diagnosis.extension"
        },
        "use": {
            name: "use",
            dataType: r5:CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            description: "Role that this diagnosis has within the episode of care (e.g. admission, billing, discharge …).",
            path: "EpisodeOfCare.diagnosis.use"
        },
        "modifierExtension": {
            name: "modifierExtension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).",
            path: "EpisodeOfCare.diagnosis.modifierExtension"
        },
        "id": {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
            path: "EpisodeOfCare.diagnosis.id"
        }
    },
    serializers: {
        'xml: r5:complexDataTypeXMLSerializer,
        'json: r5:complexDataTypeJsonSerializer
    }
}
public type EpisodeOfCareDiagnosis record {|
    *r5:BackboneElement;

    r5:CodeableReference[] condition?;
    r5:Extension[] extension?;
    r5:CodeableConcept use?;
    r5:Extension[] modifierExtension?;
    string id?;
|};

# EpisodeOfCareStatus enum
public enum EpisodeOfCareStatus {
   CODE_STATUS_ONHOLD = "onhold",
   CODE_STATUS_WAITLIST = "waitlist",
   CODE_STATUS_ACTIVE = "active",
   CODE_STATUS_CANCELLED = "cancelled",
   CODE_STATUS_FINISHED = "finished",
   CODE_STATUS_PLANNED = "planned",
   CODE_STATUS_ENTERED_IN_ERROR = "entered-in-error"
}

