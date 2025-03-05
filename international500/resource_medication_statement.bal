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

public const string PROFILE_BASE_MEDICATIONSTATEMENT = "http://hl7.org/fhir/StructureDefinition/MedicationStatement";
public const RESOURCE_NAME_MEDICATIONSTATEMENT = "MedicationStatement";

# FHIR MedicationStatement resource record.
#
# + resourceType - The type of the resource describes
# + dosage - Indicates how the medication is/was or should be taken by the patient.
# + note - Provides extra information about the Medication Statement that is not conveyed by the other attributes.
# + partOf - A larger event of which this particular MedicationStatement is a component or step.
# + reason - A concept, Condition or observation that supports why the medication is being/was taken.
# + extension - May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + subject - The person, animal or group who is/was taking the medication.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + language - The base language in which the resource is written.
# + informationSource - The person or organization that provided the information about the taking of this medication. Note: Use derivedFrom when a MedicationStatement is derived from other resources, e.g. Claim or MedicationRequest.
# + renderedDosageInstruction - The full representation of the dose of the medication included in all dosage instructions. To be used when multiple dosage instructions are included to represent complex dosing such as increasing or tapering doses.
# + derivedFrom - Allows linking the MedicationStatement to the underlying MedicationRequest, or to other information that supports or is used to derive the MedicationStatement.
# + id - The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.
# + text - A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it 'clinically safe' for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.
# + dateAsserted - The date when the Medication Statement was asserted by the information source.
# + identifier - Identifiers associated with this Medication Statement that are defined by business processes and/or used to refer to it when a direct URL reference to the resource itself is not appropriate. They are business identifiers assigned to this resource by the performer or other systems and remain constant as the resource is updated and propagates from server to server.
# + effectivePeriod - The interval of time during which it is being asserted that the patient is/was/will be taking the medication (or was not taking, when the MedicationStatement.adherence element is Not Taking).
# + effectiveTiming - The interval of time during which it is being asserted that the patient is/was/will be taking the medication (or was not taking, when the MedicationStatement.adherence element is Not Taking).
# + adherence - Indicates whether the medication is or is not being consumed or administered.
# + relatedClinicalInformation - Link to information that is relevant to a medication statement, for example, illicit drug use, gestational age, etc.
# + medication - Identifies the medication being administered. This is either a link to a resource representing the details of the medication or a simple attribute carrying a code that identifies the medication from a known list of medications.
# + encounter - The encounter that establishes the context for this MedicationStatement.
# + contained - These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, nor can they have their own independent transaction scope. This is allowed to be a Parameters resource if and only if it is referenced by a resource that provides context/meaning.
# + effectiveDateTime - The interval of time during which it is being asserted that the patient is/was/will be taking the medication (or was not taking, when the MedicationStatement.adherence element is Not Taking).
# + meta - The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.
# + implicitRules - A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.
# + category - Type of medication statement (for example, drug classification like ATC, where meds would be administered, legal category of the medication.).
# + status - A code representing the status of recording the medication statement.
@r5:ResourceDefinition {
    resourceType: "MedicationStatement",
    baseType: r5:DomainResource,
    profile: "http://hl7.org/fhir/StructureDefinition/MedicationStatement",
    elements: {
        "dosage" : {
            name: "dosage",
            dataType: r5:Dosage,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "MedicationStatement.dosage"
        },
        "note" : {
            name: "note",
            dataType: r5:Annotation,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "MedicationStatement.note"
        },
        "partOf" : {
            name: "partOf",
            dataType: r5:Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "MedicationStatement.partOf"
        },
        "reason" : {
            name: "reason",
            dataType: r5:CodeableReference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "MedicationStatement.reason",
            valueSet: "http://hl7.org/fhir/ValueSet/condition-code"
        },
        "extension" : {
            name: "extension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "MedicationStatement.extension"
        },
        "subject" : {
            name: "subject",
            dataType: r5:Reference,
            min: 1,
            max: 1,
            isArray: false,
            path: "MedicationStatement.subject"
        },
        "modifierExtension" : {
            name: "modifierExtension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "MedicationStatement.modifierExtension"
        },
        "language" : {
            name: "language",
            dataType: r5:code,
            min: 0,
            max: 1,
            isArray: false,
            path: "MedicationStatement.language",
            valueSet: "http://hl7.org/fhir/ValueSet/all-languages|5.0.0"
        },
        "informationSource" : {
            name: "informationSource",
            dataType: r5:Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "MedicationStatement.informationSource"
        },
        "renderedDosageInstruction" : {
            name: "renderedDosageInstruction",
            dataType: r5:markdown,
            min: 0,
            max: 1,
            isArray: false,
            path: "MedicationStatement.renderedDosageInstruction"
        },
        "derivedFrom" : {
            name: "derivedFrom",
            dataType: r5:Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "MedicationStatement.derivedFrom"
        },
        "id" : {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "MedicationStatement.id"
        },
        "text" : {
            name: "text",
            dataType: r5:Narrative,
            min: 0,
            max: 1,
            isArray: false,
            path: "MedicationStatement.text"
        },
        "dateAsserted" : {
            name: "dateAsserted",
            dataType: r5:dateTime,
            min: 0,
            max: 1,
            isArray: false,
            path: "MedicationStatement.dateAsserted"
        },
        "identifier" : {
            name: "identifier",
            dataType: r5:Identifier,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "MedicationStatement.identifier"
        },
        "effectivePeriod" : {
            name: "effectivePeriod",
            dataType: r5:Period,
            min: 0,
            max: 1,
            isArray: false,
            path: "MedicationStatement.effective[x]"
        },
        "effectiveTiming" : {
            name: "effectiveTiming",
            dataType: r5:Timing,
            min: 0,
            max: 1,
            isArray: false,
            path: "MedicationStatement.effective[x]"
        },
        "adherence" : {
            name: "adherence",
            dataType: MedicationStatementAdherence,
            min: 0,
            max: 1,
            isArray: false,
            path: "MedicationStatement.adherence"
        },
        "relatedClinicalInformation" : {
            name: "relatedClinicalInformation",
            dataType: r5:Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "MedicationStatement.relatedClinicalInformation"
        },
        "medication" : {
            name: "medication",
            dataType: r5:CodeableReference,
            min: 1,
            max: 1,
            isArray: false,
            path: "MedicationStatement.medication",
            valueSet: "http://hl7.org/fhir/ValueSet/medication-codes"
        },
        "encounter" : {
            name: "encounter",
            dataType: r5:Reference,
            min: 0,
            max: 1,
            isArray: false,
            path: "MedicationStatement.encounter"
        },
        "contained" : {
            name: "contained",
            dataType: r5:Resource,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "MedicationStatement.contained"
        },
        "effectiveDateTime" : {
            name: "effectiveDateTime",
            dataType: r5:dateTime,
            min: 0,
            max: 1,
            isArray: false,
            path: "MedicationStatement.effective[x]"
        },
        "meta" : {
            name: "meta",
            dataType: r5:Meta,
            min: 0,
            max: 1,
            isArray: false,
            path: "MedicationStatement.meta"
        },
        "implicitRules" : {
            name: "implicitRules",
            dataType: r5:uri,
            min: 0,
            max: 1,
            isArray: false,
            path: "MedicationStatement.implicitRules"
        },
        "category" : {
            name: "category",
            dataType: r5:CodeableConcept,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "MedicationStatement.category",
            valueSet: "http://hl7.org/fhir/ValueSet/medicationrequest-admin-location"
        },
        "status" : {
            name: "status",
            dataType: MedicationStatementStatus,
            min: 1,
            max: 1,
            isArray: false,
            path: "MedicationStatement.status",
            valueSet: "http://hl7.org/fhir/ValueSet/medication-statement-status|5.0.0"
        }
    },
    serializers: {
        'xml: r5:fhirResourceXMLSerializer,
        'json: r5:fhirResourceJsonSerializer
    }
}
public type MedicationStatement record {|
    *r5:DomainResource;

    RESOURCE_NAME_MEDICATIONSTATEMENT resourceType = RESOURCE_NAME_MEDICATIONSTATEMENT;

    r5:Dosage[] dosage?;
    r5:Annotation[] note?;
    r5:Reference[] partOf?;
    r5:CodeableReference[] reason?;
    r5:Extension[] extension?;
    r5:Reference subject;
    r5:Extension[] modifierExtension?;
    r5:code language?;
    r5:Reference[] informationSource?;
    r5:markdown renderedDosageInstruction?;
    r5:Reference[] derivedFrom?;
    string id?;
    r5:Narrative text?;
    r5:dateTime dateAsserted?;
    r5:Identifier[] identifier?;
    r5:Period effectivePeriod?;
    r5:Timing effectiveTiming?;
    MedicationStatementAdherence adherence?;
    r5:Reference[] relatedClinicalInformation?;
    r5:CodeableReference medication;
    r5:Reference encounter?;
    r5:Resource[] contained?;
    r5:dateTime effectiveDateTime?;
    r5:Meta meta?;
    r5:uri implicitRules?;
    r5:CodeableConcept[] category?;
    MedicationStatementStatus status;
    r5:Element ...;
|};

# MedicationStatementStatus enum
public enum MedicationStatementStatus {
   CODE_STATUS_DRAFT = "draft",
   CODE_STATUS_RECORDED = "recorded",
   CODE_STATUS_ENTERED_IN_ERROR = "entered-in-error"
}

# FHIR MedicationStatementAdherence datatype record.
#
# + reason - Captures the reason for the current use or adherence of a medication.
# + extension - May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + code - Type of the adherence for the medication.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + id - Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
@r5:DataTypeDefinition {
    name: "MedicationStatementAdherence",
    baseType: (),
    elements: {
        "reason": {
            name: "reason",
            dataType: r5:CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            description: "Captures the reason for the current use or adherence of a medication.",
            path: "MedicationStatement.adherence.reason"
        },
        "extension": {
            name: "extension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
            path: "MedicationStatement.adherence.extension"
        },
        "code": {
            name: "code",
            dataType: r5:CodeableConcept,
            min: 1,
            max: 1,
            isArray: false,
            description: "Type of the adherence for the medication.",
            path: "MedicationStatement.adherence.code"
        },
        "modifierExtension": {
            name: "modifierExtension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).",
            path: "MedicationStatement.adherence.modifierExtension"
        },
        "id": {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
            path: "MedicationStatement.adherence.id"
        }
    },
    serializers: {
        'xml: r5:complexDataTypeXMLSerializer,
        'json: r5:complexDataTypeJsonSerializer
    }
}
public type MedicationStatementAdherence record {|
    *r5:BackboneElement;

    r5:CodeableConcept reason?;
    r5:Extension[] extension?;
    r5:CodeableConcept code;
    r5:Extension[] modifierExtension?;
    string id?;
|};

