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

public const string PROFILE_BASE_PROCEDURE = "http://hl7.org/fhir/StructureDefinition/Procedure";
public const RESOURCE_NAME_PROCEDURE = "Procedure";

# FHIR Procedure resource record.
#
# + resourceType - The type of the resource describes
# + note - Any other notes and comments about the procedure.
# + partOf - A larger event of which this particular procedure is a component or step.
# + reason - The coded reason or reference why the procedure was performed. This may be a coded entity of some type, be present as text, or be a reference to one of several resources that justify the procedure.
# + complication - Any complications that occurred during the procedure, or in the immediate post-performance period. These are generally tracked separately from the notes, which will typically describe the procedure itself rather than any 'post procedure' issues.
# + extension - May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + code - The specific procedure that is performed. Use text if the exact nature of the procedure cannot be coded (e.g. 'Laparoscopic Appendectomy').
# + subject - On whom or on what the procedure was performed. This is usually an individual human, but can also be performed on animals, groups of humans or animals, organizations or practitioners (for licensing), locations or devices (for safety inspections or regulatory authorizations). If the actual focus of the procedure is different from the subject, the focus element specifies the actual focus of the procedure.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + occurrenceRange - Estimated or actual date, date-time, period, or age when the procedure did occur or is occurring. Allows a period to support complex procedures that span more than one date, and also allows for the length of the procedure to be captured.
# + focus - Who is the target of the procedure when it is not the subject of record only. If focus is not present, then subject is the focus. If focus is present and the subject is one of the targets of the procedure, include subject as a focus as well. If focus is present and the subject is not included in focus, it implies that the procedure was only targeted on the focus. For example, when a caregiver is given education for a patient, the caregiver would be the focus and the procedure record is associated with the subject (e.g. patient). For example, use focus when recording the target of the education, training, or counseling is the parent or relative of a patient.
# + language - The base language in which the resource is written.
# + used - Identifies medications, devices and any other substance used as part of the procedure.
# + instantiatesUri - The URL pointing to an externally maintained protocol, guideline, order set or other definition that is adhered to in whole or in part by this Procedure.
# + followUp - If the procedure required specific follow up - e.g. removal of sutures. The follow up may be represented as a simple note or could potentially be more complex, in which case the CarePlan resource can be used.
# + reportedReference - Indicates if this record was captured as a secondary 'reported' record rather than as an original primary source-of-truth record. It may also indicate the source of the report.
# + statusReason - Captures the reason for the current state of the procedure.
# + supportingInfo - Other resources from the patient record that may be relevant to the procedure. The information from these resources was either used to create the instance or is provided to help with its interpretation. This extension should not be used if more specific inline elements or extensions are available.
# + id - The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.
# + text - A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it 'clinically safe' for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.
# + basedOn - A reference to a resource that contains details of the request for this procedure.
# + occurrenceAge - Estimated or actual date, date-time, period, or age when the procedure did occur or is occurring. Allows a period to support complex procedures that span more than one date, and also allows for the length of the procedure to be captured.
# + outcome - The outcome of the procedure - did it resolve the reasons for the procedure being performed?
# + identifier - Business identifiers assigned to this procedure by the performer or other systems which remain constant as the resource is updated and is propagated from server to server.
# + recorder - Individual who recorded the record and takes responsibility for its content.
# + reportedBoolean - Indicates if this record was captured as a secondary 'reported' record rather than as an original primary source-of-truth record. It may also indicate the source of the report.
# + performer - Indicates who or what performed the procedure and how they were involved.
# + focalDevice - A device that is implanted, removed or otherwise manipulated (calibration, battery replacement, fitting a prosthesis, attaching a wound-vac, etc.) as a focal portion of the Procedure.
# + encounter - The Encounter during which this Procedure was created or performed or to which the creation of this record is tightly associated.
# + occurrenceTiming - Estimated or actual date, date-time, period, or age when the procedure did occur or is occurring. Allows a period to support complex procedures that span more than one date, and also allows for the length of the procedure to be captured.
# + instantiatesCanonical - The URL pointing to a FHIR-defined protocol, guideline, order set or other definition that is adhered to in whole or in part by this Procedure.
# + recorded - The date the occurrence of the procedure was first captured in the record regardless of Procedure.status (potentially after the occurrence of the event).
# + bodySite - Detailed and structured anatomical location information. Multiple locations are allowed - e.g. multiple punch biopsies of a lesion.
# + contained - These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, nor can they have their own independent transaction scope. This is allowed to be a Parameters resource if and only if it is referenced by a resource that provides context/meaning.
# + occurrencePeriod - Estimated or actual date, date-time, period, or age when the procedure did occur or is occurring. Allows a period to support complex procedures that span more than one date, and also allows for the length of the procedure to be captured.
# + meta - The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.
# + report - This could be a histology result, pathology report, surgical report, etc.
# + implicitRules - A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.
# + location - The location where the procedure actually happened. E.g. a newborn at home, a tracheostomy at a restaurant.
# + occurrenceDateTime - Estimated or actual date, date-time, period, or age when the procedure did occur or is occurring. Allows a period to support complex procedures that span more than one date, and also allows for the length of the procedure to be captured.
# + occurrenceString - Estimated or actual date, date-time, period, or age when the procedure did occur or is occurring. Allows a period to support complex procedures that span more than one date, and also allows for the length of the procedure to be captured.
# + category - A code that classifies the procedure for searching, sorting and display purposes (e.g. 'Surgical Procedure').
# + status - A code specifying the state of the procedure. Generally, this will be the in-progress or completed state.
@r5:ResourceDefinition {
    resourceType: "Procedure",
    baseType: r5:DomainResource,
    profile: "http://hl7.org/fhir/StructureDefinition/Procedure",
    elements: {
        "note" : {
            name: "note",
            dataType: r5:Annotation,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Procedure.note"
        },
        "partOf" : {
            name: "partOf",
            dataType: r5:Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Procedure.partOf"
        },
        "reason" : {
            name: "reason",
            dataType: r5:CodeableReference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Procedure.reason",
            valueSet: "http://hl7.org/fhir/ValueSet/procedure-reason"
        },
        "complication" : {
            name: "complication",
            dataType: r5:CodeableReference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Procedure.complication",
            valueSet: "http://hl7.org/fhir/ValueSet/condition-code"
        },
        "extension" : {
            name: "extension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Procedure.extension"
        },
        "code" : {
            name: "code",
            dataType: r5:CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            path: "Procedure.code",
            valueSet: "http://hl7.org/fhir/ValueSet/procedure-code"
        },
        "subject" : {
            name: "subject",
            dataType: r5:Reference,
            min: 1,
            max: 1,
            isArray: false,
            path: "Procedure.subject"
        },
        "modifierExtension" : {
            name: "modifierExtension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Procedure.modifierExtension"
        },
        "occurrenceRange" : {
            name: "occurrenceRange",
            dataType: r5:Range,
            min: 0,
            max: 1,
            isArray: false,
            path: "Procedure.occurrence[x]"
        },
        "focus" : {
            name: "focus",
            dataType: r5:Reference,
            min: 0,
            max: 1,
            isArray: false,
            path: "Procedure.focus"
        },
        "language" : {
            name: "language",
            dataType: r5:code,
            min: 0,
            max: 1,
            isArray: false,
            path: "Procedure.language",
            valueSet: "http://hl7.org/fhir/ValueSet/all-languages|5.0.0"
        },
        "used" : {
            name: "used",
            dataType: r5:CodeableReference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Procedure.used",
            valueSet: "http://hl7.org/fhir/ValueSet/device-type"
        },
        "instantiatesUri" : {
            name: "instantiatesUri",
            dataType: r5:uri,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Procedure.instantiatesUri"
        },
        "followUp" : {
            name: "followUp",
            dataType: r5:CodeableConcept,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Procedure.followUp",
            valueSet: "http://hl7.org/fhir/ValueSet/procedure-followup"
        },
        "reportedReference" : {
            name: "reportedReference",
            dataType: r5:Reference,
            min: 0,
            max: 1,
            isArray: false,
            path: "Procedure.reported[x]"
        },
        "statusReason" : {
            name: "statusReason",
            dataType: r5:CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            path: "Procedure.statusReason",
            valueSet: "http://hl7.org/fhir/ValueSet/procedure-not-performed-reason"
        },
        "supportingInfo" : {
            name: "supportingInfo",
            dataType: r5:Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Procedure.supportingInfo"
        },
        "id" : {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "Procedure.id"
        },
        "text" : {
            name: "text",
            dataType: r5:Narrative,
            min: 0,
            max: 1,
            isArray: false,
            path: "Procedure.text"
        },
        "basedOn" : {
            name: "basedOn",
            dataType: r5:Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Procedure.basedOn"
        },
        "occurrenceAge" : {
            name: "occurrenceAge",
            dataType: r5:Age,
            min: 0,
            max: 1,
            isArray: false,
            path: "Procedure.occurrence[x]"
        },
        "outcome" : {
            name: "outcome",
            dataType: r5:CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            path: "Procedure.outcome",
            valueSet: "http://hl7.org/fhir/ValueSet/procedure-outcome"
        },
        "identifier" : {
            name: "identifier",
            dataType: r5:Identifier,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Procedure.identifier"
        },
        "recorder" : {
            name: "recorder",
            dataType: r5:Reference,
            min: 0,
            max: 1,
            isArray: false,
            path: "Procedure.recorder"
        },
        "reportedBoolean" : {
            name: "reportedBoolean",
            dataType: boolean,
            min: 0,
            max: 1,
            isArray: false,
            path: "Procedure.reported[x]"
        },
        "performer" : {
            name: "performer",
            dataType: ProcedurePerformer,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Procedure.performer"
        },
        "focalDevice" : {
            name: "focalDevice",
            dataType: ProcedureFocalDevice,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Procedure.focalDevice"
        },
        "encounter" : {
            name: "encounter",
            dataType: r5:Reference,
            min: 0,
            max: 1,
            isArray: false,
            path: "Procedure.encounter"
        },
        "occurrenceTiming" : {
            name: "occurrenceTiming",
            dataType: r5:Timing,
            min: 0,
            max: 1,
            isArray: false,
            path: "Procedure.occurrence[x]"
        },
        "instantiatesCanonical" : {
            name: "instantiatesCanonical",
            dataType: r5:canonical,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Procedure.instantiatesCanonical"
        },
        "recorded" : {
            name: "recorded",
            dataType: r5:dateTime,
            min: 0,
            max: 1,
            isArray: false,
            path: "Procedure.recorded"
        },
        "bodySite" : {
            name: "bodySite",
            dataType: r5:CodeableConcept,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Procedure.bodySite",
            valueSet: "http://hl7.org/fhir/ValueSet/body-site"
        },
        "contained" : {
            name: "contained",
            dataType: r5:Resource,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Procedure.contained"
        },
        "occurrencePeriod" : {
            name: "occurrencePeriod",
            dataType: r5:Period,
            min: 0,
            max: 1,
            isArray: false,
            path: "Procedure.occurrence[x]"
        },
        "meta" : {
            name: "meta",
            dataType: r5:Meta,
            min: 0,
            max: 1,
            isArray: false,
            path: "Procedure.meta"
        },
        "report" : {
            name: "report",
            dataType: r5:Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Procedure.report"
        },
        "implicitRules" : {
            name: "implicitRules",
            dataType: r5:uri,
            min: 0,
            max: 1,
            isArray: false,
            path: "Procedure.implicitRules"
        },
        "location" : {
            name: "location",
            dataType: r5:Reference,
            min: 0,
            max: 1,
            isArray: false,
            path: "Procedure.location"
        },
        "occurrenceDateTime" : {
            name: "occurrenceDateTime",
            dataType: r5:dateTime,
            min: 0,
            max: 1,
            isArray: false,
            path: "Procedure.occurrence[x]"
        },
        "occurrenceString" : {
            name: "occurrenceString",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "Procedure.occurrence[x]"
        },
        "category" : {
            name: "category",
            dataType: r5:CodeableConcept,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Procedure.category",
            valueSet: "http://hl7.org/fhir/ValueSet/procedure-category"
        },
        "status" : {
            name: "status",
            dataType: ProcedureStatus,
            min: 1,
            max: 1,
            isArray: false,
            path: "Procedure.status",
            valueSet: "http://hl7.org/fhir/ValueSet/event-status|5.0.0"
        }
    },
    serializers: {
        'xml: r5:fhirResourceXMLSerializer,
        'json: r5:fhirResourceJsonSerializer
    }
}
public type Procedure record {|
    *r5:DomainResource;

    RESOURCE_NAME_PROCEDURE resourceType = RESOURCE_NAME_PROCEDURE;

    r5:Annotation[] note?;
    r5:Reference[] partOf?;
    r5:CodeableReference[] reason?;
    r5:CodeableReference[] complication?;
    r5:Extension[] extension?;
    r5:CodeableConcept code?;
    r5:Reference subject;
    r5:Extension[] modifierExtension?;
    r5:Range occurrenceRange?;
    r5:Reference focus?;
    r5:code language?;
    r5:CodeableReference[] used?;
    r5:uri[] instantiatesUri?;
    r5:CodeableConcept[] followUp?;
    r5:Reference reportedReference?;
    r5:CodeableConcept statusReason?;
    r5:Reference[] supportingInfo?;
    string id?;
    r5:Narrative text?;
    r5:Reference[] basedOn?;
    r5:Age occurrenceAge?;
    r5:CodeableConcept outcome?;
    r5:Identifier[] identifier?;
    r5:Reference recorder?;
    boolean reportedBoolean?;
    ProcedurePerformer[] performer?;
    ProcedureFocalDevice[] focalDevice?;
    r5:Reference encounter?;
    r5:Timing occurrenceTiming?;
    r5:canonical[] instantiatesCanonical?;
    r5:dateTime recorded?;
    r5:CodeableConcept[] bodySite?;
    r5:Resource[] contained?;
    r5:Period occurrencePeriod?;
    r5:Meta meta?;
    r5:Reference[] report?;
    r5:uri implicitRules?;
    r5:Reference location?;
    r5:dateTime occurrenceDateTime?;
    string occurrenceString?;
    r5:CodeableConcept[] category?;
    ProcedureStatus status;
    r5:Element ...;
|};

# ProcedureStatus enum
public enum ProcedureStatus {
   CODE_STATUS_STOPPED = "stopped",
   CODE_STATUS_COMPLETED = "completed",
   CODE_STATUS_NOT_DONE = "not-done",
   CODE_STATUS_ENTERED_IN_ERROR = "entered-in-error",
   CODE_STATUS_IN_PROGRESS = "in-progress",
   CODE_STATUS_ON_HOLD = "on-hold",
   CODE_STATUS_PREPARATION = "preparation",
   CODE_STATUS_UNKNOWN = "unknown"
}

# FHIR ProcedureFocalDevice datatype record.
#
# + extension - May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + action - The kind of change that happened to the device during the procedure.
# + id - Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
# + manipulated - The device that was manipulated (changed) during the procedure.
@r5:DataTypeDefinition {
    name: "ProcedureFocalDevice",
    baseType: (),
    elements: {
        "extension": {
            name: "extension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
            path: "Procedure.focalDevice.extension"
        },
        "modifierExtension": {
            name: "modifierExtension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).",
            path: "Procedure.focalDevice.modifierExtension"
        },
        "action": {
            name: "action",
            dataType: r5:CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            description: "The kind of change that happened to the device during the procedure.",
            path: "Procedure.focalDevice.action"
        },
        "id": {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
            path: "Procedure.focalDevice.id"
        },
        "manipulated": {
            name: "manipulated",
            dataType: r5:Reference,
            min: 1,
            max: 1,
            isArray: false,
            description: "The device that was manipulated (changed) during the procedure.",
            path: "Procedure.focalDevice.manipulated"
        }
    },
    serializers: {
        'xml: r5:complexDataTypeXMLSerializer,
        'json: r5:complexDataTypeJsonSerializer
    }
}
public type ProcedureFocalDevice record {|
    *r5:BackboneElement;

    r5:Extension[] extension?;
    r5:Extension[] modifierExtension?;
    r5:CodeableConcept action?;
    string id?;
    r5:Reference manipulated;
|};

# FHIR ProcedurePerformer datatype record.
#
# + actor - Indicates who or what performed the procedure.
# + extension - May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + period - Time period during which the performer performed the procedure.
# + 'function - Distinguishes the type of involvement of the performer in the procedure. For example, surgeon, anaesthetist, endoscopist.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + onBehalfOf - The Organization the Patient, RelatedPerson, Device, CareTeam, and HealthcareService was acting on behalf of.
# + id - Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
@r5:DataTypeDefinition {
    name: "ProcedurePerformer",
    baseType: (),
    elements: {
        "actor": {
            name: "actor",
            dataType: r5:Reference,
            min: 1,
            max: 1,
            isArray: false,
            description: "Indicates who or what performed the procedure.",
            path: "Procedure.performer.actor"
        },
        "extension": {
            name: "extension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
            path: "Procedure.performer.extension"
        },
        "period": {
            name: "period",
            dataType: r5:Period,
            min: 0,
            max: 1,
            isArray: false,
            description: "Time period during which the performer performed the procedure.",
            path: "Procedure.performer.period"
        },
        "function": {
            name: "function",
            dataType: r5:CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            description: "Distinguishes the type of involvement of the performer in the procedure. For example, surgeon, anaesthetist, endoscopist.",
            path: "Procedure.performer.function"
        },
        "modifierExtension": {
            name: "modifierExtension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).",
            path: "Procedure.performer.modifierExtension"
        },
        "onBehalfOf": {
            name: "onBehalfOf",
            dataType: r5:Reference,
            min: 0,
            max: 1,
            isArray: false,
            description: "The Organization the Patient, RelatedPerson, Device, CareTeam, and HealthcareService was acting on behalf of.",
            path: "Procedure.performer.onBehalfOf"
        },
        "id": {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
            path: "Procedure.performer.id"
        }
    },
    serializers: {
        'xml: r5:complexDataTypeXMLSerializer,
        'json: r5:complexDataTypeJsonSerializer
    }
}
public type ProcedurePerformer record {|
    *r5:BackboneElement;

    r5:Reference actor;
    r5:Extension[] extension?;
    r5:Period period?;
    r5:CodeableConcept 'function?;
    r5:Extension[] modifierExtension?;
    r5:Reference onBehalfOf?;
    string id?;
|};

