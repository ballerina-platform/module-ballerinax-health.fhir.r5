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

public const string PROFILE_BASE_MEDICATIONADMINISTRATION = "http://hl7.org/fhir/StructureDefinition/MedicationAdministration";
public const RESOURCE_NAME_MEDICATIONADMINISTRATION = "MedicationAdministration";

# FHIR MedicationAdministration resource record.
#
# + resourceType - The type of the resource describes
# + dosage - Describes the medication dosage information details e.g. dose, rate, site, route, etc.
# + note - Extra information about the medication administration that is not conveyed by the other attributes.
# + partOf - A larger event of which this particular event is a component or step.
# + reason - A code, Condition or observation that supports why the medication was administered.
# + request - The original request, instruction or authority to perform the administration.
# + extension - May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + subject - The person or animal or group receiving the medication.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + language - The base language in which the resource is written.
# + isSubPotent - An indication that the full dose was not administered.
# + statusReason - A code indicating why the administration was not performed.
# + occurenceTiming - A specific date/time or interval of time during which the administration took place (or did not take place). For many administrations, such as swallowing a tablet the use of dateTime is more appropriate.
# + id - The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.
# + text - A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it 'clinically safe' for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.
# + basedOn - A plan that is fulfilled in whole or in part by this MedicationAdministration.
# + identifier - Identifiers associated with this Medication Administration that are defined by business processes and/or used to refer to it when a direct URL reference to the resource itself is not appropriate. They are business identifiers assigned to this resource by the performer or other systems and remain constant as the resource is updated and propagates from server to server.
# + performer - The performer of the medication treatment. For devices this is the device that performed the administration of the medication. An IV Pump would be an example of a device that is performing the administration. Both the IV Pump and the practitioner that set the rate or bolus on the pump can be listed as performers.
# + occurenceDateTime - A specific date/time or interval of time during which the administration took place (or did not take place). For many administrations, such as swallowing a tablet the use of dateTime is more appropriate.
# + supportingInformation - Additional information (for example, patient height and weight) that supports the administration of the medication. This attribute can be used to provide documentation of specific characteristics of the patient present at the time of administration. For example, if the dose says 'give 'x' if the heartrate exceeds 'y'', then the heart rate can be included using this attribute.
# + medication - Identifies the medication that was administered. This is either a link to a resource representing the details of the medication or a simple attribute carrying a code that identifies the medication from a known list of medications.
# + encounter - The visit, admission, or other contact between patient and health care provider during which the medication administration was performed.
# + recorded - The date the occurrence of the MedicationAdministration was first captured in the record - potentially significantly after the occurrence of the event.
# + contained - These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, nor can they have their own independent transaction scope. This is allowed to be a Parameters resource if and only if it is referenced by a resource that provides context/meaning.
# + subPotentReason - The reason or reasons why the full dose was not administered.
# + meta - The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.
# + occurencePeriod - A specific date/time or interval of time during which the administration took place (or did not take place). For many administrations, such as swallowing a tablet the use of dateTime is more appropriate.
# + eventHistory - A summary of the events of interest that have occurred, such as when the administration was verified.
# + implicitRules - A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.
# + category - The type of medication administration (for example, drug classification like ATC, where meds would be administered, legal category of the medication).
# + device - The device that is to be used for the administration of the medication (for example, PCA Pump).
# + status - Will generally be set to show that the administration has been completed. For some long running administrations such as infusions, it is possible for an administration to be started but not completed or it may be paused while some other process is under way.
@r5:ResourceDefinition {
    resourceType: "MedicationAdministration",
    baseType: r5:DomainResource,
    profile: "http://hl7.org/fhir/StructureDefinition/MedicationAdministration",
    elements: {
        "dosage" : {
            name: "dosage",
            dataType: MedicationAdministrationDosage,
            min: 0,
            max: 1,
            isArray: false,
            path: "MedicationAdministration.dosage"
        },
        "note" : {
            name: "note",
            dataType: r5:Annotation,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "MedicationAdministration.note"
        },
        "partOf" : {
            name: "partOf",
            dataType: r5:Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "MedicationAdministration.partOf"
        },
        "reason" : {
            name: "reason",
            dataType: r5:CodeableReference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "MedicationAdministration.reason",
            valueSet: "http://hl7.org/fhir/ValueSet/reason-medication-given-codes"
        },
        "request" : {
            name: "request",
            dataType: r5:Reference,
            min: 0,
            max: 1,
            isArray: false,
            path: "MedicationAdministration.request"
        },
        "extension" : {
            name: "extension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "MedicationAdministration.extension"
        },
        "subject" : {
            name: "subject",
            dataType: r5:Reference,
            min: 1,
            max: 1,
            isArray: false,
            path: "MedicationAdministration.subject"
        },
        "modifierExtension" : {
            name: "modifierExtension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "MedicationAdministration.modifierExtension"
        },
        "language" : {
            name: "language",
            dataType: r5:code,
            min: 0,
            max: 1,
            isArray: false,
            path: "MedicationAdministration.language",
            valueSet: "http://hl7.org/fhir/ValueSet/all-languages|5.0.0"
        },
        "isSubPotent" : {
            name: "isSubPotent",
            dataType: boolean,
            min: 0,
            max: 1,
            isArray: false,
            path: "MedicationAdministration.isSubPotent"
        },
        "statusReason" : {
            name: "statusReason",
            dataType: r5:CodeableConcept,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "MedicationAdministration.statusReason",
            valueSet: "http://hl7.org/fhir/ValueSet/reason-medication-not-given-codes"
        },
        "occurenceTiming" : {
            name: "occurenceTiming",
            dataType: r5:Timing,
            min: 1,
            max: 1,
            isArray: false,
            path: "MedicationAdministration.occurence[x]"
        },
        "id" : {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "MedicationAdministration.id"
        },
        "text" : {
            name: "text",
            dataType: r5:Narrative,
            min: 0,
            max: 1,
            isArray: false,
            path: "MedicationAdministration.text"
        },
        "basedOn" : {
            name: "basedOn",
            dataType: r5:Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "MedicationAdministration.basedOn"
        },
        "identifier" : {
            name: "identifier",
            dataType: r5:Identifier,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "MedicationAdministration.identifier"
        },
        "performer" : {
            name: "performer",
            dataType: MedicationAdministrationPerformer,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "MedicationAdministration.performer"
        },
        "occurenceDateTime" : {
            name: "occurenceDateTime",
            dataType: r5:dateTime,
            min: 1,
            max: 1,
            isArray: false,
            path: "MedicationAdministration.occurence[x]"
        },
        "supportingInformation" : {
            name: "supportingInformation",
            dataType: r5:Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "MedicationAdministration.supportingInformation"
        },
        "medication" : {
            name: "medication",
            dataType: r5:CodeableReference,
            min: 1,
            max: 1,
            isArray: false,
            path: "MedicationAdministration.medication",
            valueSet: "http://hl7.org/fhir/ValueSet/medication-codes"
        },
        "encounter" : {
            name: "encounter",
            dataType: r5:Reference,
            min: 0,
            max: 1,
            isArray: false,
            path: "MedicationAdministration.encounter"
        },
        "recorded" : {
            name: "recorded",
            dataType: r5:dateTime,
            min: 0,
            max: 1,
            isArray: false,
            path: "MedicationAdministration.recorded"
        },
        "contained" : {
            name: "contained",
            dataType: r5:Resource,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "MedicationAdministration.contained"
        },
        "subPotentReason" : {
            name: "subPotentReason",
            dataType: r5:CodeableConcept,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "MedicationAdministration.subPotentReason",
            valueSet: "http://hl7.org/fhir/ValueSet/administration-subpotent-reason"
        },
        "meta" : {
            name: "meta",
            dataType: r5:Meta,
            min: 0,
            max: 1,
            isArray: false,
            path: "MedicationAdministration.meta"
        },
        "occurencePeriod" : {
            name: "occurencePeriod",
            dataType: r5:Period,
            min: 1,
            max: 1,
            isArray: false,
            path: "MedicationAdministration.occurence[x]"
        },
        "eventHistory" : {
            name: "eventHistory",
            dataType: r5:Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "MedicationAdministration.eventHistory"
        },
        "implicitRules" : {
            name: "implicitRules",
            dataType: r5:uri,
            min: 0,
            max: 1,
            isArray: false,
            path: "MedicationAdministration.implicitRules"
        },
        "category" : {
            name: "category",
            dataType: r5:CodeableConcept,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "MedicationAdministration.category",
            valueSet: "http://hl7.org/fhir/ValueSet/medication-admin-location"
        },
        "device" : {
            name: "device",
            dataType: r5:CodeableReference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "MedicationAdministration.device"
        },
        "status" : {
            name: "status",
            dataType: MedicationAdministrationStatus,
            min: 1,
            max: 1,
            isArray: false,
            path: "MedicationAdministration.status",
            valueSet: "http://hl7.org/fhir/ValueSet/medication-admin-status|5.0.0"
        }
    },
    serializers: {
        'xml: r5:fhirResourceXMLSerializer,
        'json: r5:fhirResourceJsonSerializer
    }
}
public type MedicationAdministration record {|
    *r5:DomainResource;

    RESOURCE_NAME_MEDICATIONADMINISTRATION resourceType = RESOURCE_NAME_MEDICATIONADMINISTRATION;

    MedicationAdministrationDosage dosage?;
    r5:Annotation[] note?;
    r5:Reference[] partOf?;
    r5:CodeableReference[] reason?;
    r5:Reference request?;
    r5:Extension[] extension?;
    r5:Reference subject;
    r5:Extension[] modifierExtension?;
    r5:code language?;
    boolean isSubPotent?;
    r5:CodeableConcept[] statusReason?;
    r5:Timing occurenceTiming;
    string id?;
    r5:Narrative text?;
    r5:Reference[] basedOn?;
    r5:Identifier[] identifier?;
    MedicationAdministrationPerformer[] performer?;
    r5:dateTime occurenceDateTime;
    r5:Reference[] supportingInformation?;
    r5:CodeableReference medication;
    r5:Reference encounter?;
    r5:dateTime recorded?;
    r5:Resource[] contained?;
    r5:CodeableConcept[] subPotentReason?;
    r5:Meta meta?;
    r5:Period occurencePeriod;
    r5:Reference[] eventHistory?;
    r5:uri implicitRules?;
    r5:CodeableConcept[] category?;
    r5:CodeableReference[] device?;
    MedicationAdministrationStatus status;
    r5:Element ...;
|};

# FHIR MedicationAdministrationDosage datatype record.
#
# + dose - The amount of the medication given at one administration event. Use this value when the administration is essentially an instantaneous event such as a swallowing a tablet or giving an injection.
# + extension - May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + rateRatio - Identifies the speed with which the medication was or will be introduced into the patient. Typically, the rate for an infusion e.g. 100 ml per 1 hour or 100 ml/hr. May also be expressed as a rate per unit of time, e.g. 500 ml per 2 hours. Other examples: 200 mcg/min or 200 mcg/1 minute; 1 liter/8 hours.
# + site - A coded specification of the anatomic site where the medication first entered the body. For example, 'left arm'.
# + route - A code specifying the route or physiological path of administration of a therapeutic agent into or onto the patient. For example, topical, intravenous, etc.
# + method - A coded value indicating the method by which the medication is intended to be or was introduced into or on the body. This attribute will most often NOT be populated. It is most commonly used for injections. For example, Slow Push, Deep IV.
# + rateQuantity - Identifies the speed with which the medication was or will be introduced into the patient. Typically, the rate for an infusion e.g. 100 ml per 1 hour or 100 ml/hr. May also be expressed as a rate per unit of time, e.g. 500 ml per 2 hours. Other examples: 200 mcg/min or 200 mcg/1 minute; 1 liter/8 hours.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + id - Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
# + text - Free text dosage can be used for cases where the dosage administered is too complex to code. When coded dosage is present, the free text dosage may still be present for display to humans. The dosage instructions should reflect the dosage of the medication that was administered.
@r5:DataTypeDefinition {
    name: "MedicationAdministrationDosage",
    baseType: (),
    elements: {
        "dose": {
            name: "dose",
            dataType: r5:Quantity,
            min: 0,
            max: 1,
            isArray: false,
            description: "The amount of the medication given at one administration event. Use this value when the administration is essentially an instantaneous event such as a swallowing a tablet or giving an injection.",
            path: "MedicationAdministration.dosage.dose"
        },
        "extension": {
            name: "extension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
            path: "MedicationAdministration.dosage.extension"
        },
        "rateRatio": {
            name: "rateRatio",
            dataType: r5:Ratio,
            min: 0,
            max: 1,
            isArray: false,
            description: "Identifies the speed with which the medication was or will be introduced into the patient. Typically, the rate for an infusion e.g. 100 ml per 1 hour or 100 ml/hr. May also be expressed as a rate per unit of time, e.g. 500 ml per 2 hours. Other examples: 200 mcg/min or 200 mcg/1 minute; 1 liter/8 hours.",
            path: "MedicationAdministration.dosage.rate[x]"
        },
        "site": {
            name: "site",
            dataType: r5:CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            description: "A coded specification of the anatomic site where the medication first entered the body. For example, 'left arm'.",
            path: "MedicationAdministration.dosage.site"
        },
        "route": {
            name: "route",
            dataType: r5:CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            description: "A code specifying the route or physiological path of administration of a therapeutic agent into or onto the patient. For example, topical, intravenous, etc.",
            path: "MedicationAdministration.dosage.route"
        },
        "method": {
            name: "method",
            dataType: r5:CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            description: "A coded value indicating the method by which the medication is intended to be or was introduced into or on the body. This attribute will most often NOT be populated. It is most commonly used for injections. For example, Slow Push, Deep IV.",
            path: "MedicationAdministration.dosage.method"
        },
        "rateQuantity": {
            name: "rateQuantity",
            dataType: r5:Quantity,
            min: 0,
            max: 1,
            isArray: false,
            description: "Identifies the speed with which the medication was or will be introduced into the patient. Typically, the rate for an infusion e.g. 100 ml per 1 hour or 100 ml/hr. May also be expressed as a rate per unit of time, e.g. 500 ml per 2 hours. Other examples: 200 mcg/min or 200 mcg/1 minute; 1 liter/8 hours.",
            path: "MedicationAdministration.dosage.rate[x]"
        },
        "modifierExtension": {
            name: "modifierExtension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).",
            path: "MedicationAdministration.dosage.modifierExtension"
        },
        "id": {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
            path: "MedicationAdministration.dosage.id"
        },
        "text": {
            name: "text",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Free text dosage can be used for cases where the dosage administered is too complex to code. When coded dosage is present, the free text dosage may still be present for display to humans. The dosage instructions should reflect the dosage of the medication that was administered.",
            path: "MedicationAdministration.dosage.text"
        }
    },
    serializers: {
        'xml: r5:complexDataTypeXMLSerializer,
        'json: r5:complexDataTypeJsonSerializer
    }
}
public type MedicationAdministrationDosage record {|
    *r5:BackboneElement;

    r5:Quantity dose?;
    r5:Extension[] extension?;
    r5:Ratio rateRatio?;
    r5:CodeableConcept site?;
    r5:CodeableConcept route?;
    r5:CodeableConcept method?;
    r5:Quantity rateQuantity?;
    r5:Extension[] modifierExtension?;
    string id?;
    string text?;
|};

# FHIR MedicationAdministrationPerformer datatype record.
#
# + actor - Indicates who or what performed the medication administration.
# + extension - May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + 'function - Distinguishes the type of involvement of the performer in the medication administration.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + id - Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
@r5:DataTypeDefinition {
    name: "MedicationAdministrationPerformer",
    baseType: (),
    elements: {
        "actor": {
            name: "actor",
            dataType: r5:CodeableReference,
            min: 1,
            max: 1,
            isArray: false,
            description: "Indicates who or what performed the medication administration.",
            path: "MedicationAdministration.performer.actor"
        },
        "extension": {
            name: "extension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
            path: "MedicationAdministration.performer.extension"
        },
        "function": {
            name: "function",
            dataType: r5:CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            description: "Distinguishes the type of involvement of the performer in the medication administration.",
            path: "MedicationAdministration.performer.function"
        },
        "modifierExtension": {
            name: "modifierExtension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).",
            path: "MedicationAdministration.performer.modifierExtension"
        },
        "id": {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
            path: "MedicationAdministration.performer.id"
        }
    },
    serializers: {
        'xml: r5:complexDataTypeXMLSerializer,
        'json: r5:complexDataTypeJsonSerializer
    }
}
public type MedicationAdministrationPerformer record {|
    *r5:BackboneElement;

    r5:CodeableReference actor;
    r5:Extension[] extension?;
    r5:CodeableConcept 'function?;
    r5:Extension[] modifierExtension?;
    string id?;
|};

# MedicationAdministrationStatus enum
public enum MedicationAdministrationStatus {
   CODE_STATUS_STOPPED = "stopped",
   CODE_STATUS_COMPLETED = "completed",
   CODE_STATUS_NOT_DONE = "not-done",
   CODE_STATUS_ENTERED_IN_ERROR = "entered-in-error",
   CODE_STATUS_IN_PROGRESS = "in-progress",
   CODE_STATUS_ON_HOLD = "on-hold",
   CODE_STATUS_UNKNOWN = "unknown"
}

