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

public const string PROFILE_BASE_IMAGINGSTUDY = "http://hl7.org/fhir/StructureDefinition/ImagingStudy";
public const RESOURCE_NAME_IMAGINGSTUDY = "ImagingStudy";

# FHIR ImagingStudy resource record.
#
# + resourceType - The type of the resource describes
# + note - Per the recommended DICOM mapping, this element is derived from the Study Description attribute (0008,1030). Observations or findings about the imaging study should be recorded in another resource, e.g. Observation, and not in this element.
# + partOf - A larger event of which this particular ImagingStudy is a component or step. For example, an ImagingStudy as part of a procedure.
# + reason - Description of clinical condition indicating why the ImagingStudy was requested, and/or Indicates another resource whose existence justifies this Study.
# + extension - May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + modality - A list of all the distinct values of series.modality. This may include both acquisition and non-acquisition modalities.
# + subject - The subject, typically a patient, of the imaging study.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + description - The Imaging Manager description of the study. Institution-generated description or classification of the Study (component) performed.
# + language - The base language in which the resource is written.
# + endpoint - The network service providing access (e.g., query, view, or retrieval) for the study. See implementation notes for information about using DICOM endpoints. A study-level endpoint applies to each series in the study, unless overridden by a series-level endpoint with the same Endpoint.connectionType.
# + numberOfInstances - Number of SOP Instances in Study. This value given may be larger than the number of instance elements this resource contains due to resource availability, security, or other factors. This element should be present if any instance elements are present.
# + id - The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.
# + text - A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it 'clinically safe' for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.
# + basedOn - A list of the diagnostic requests that resulted in this imaging study being performed.
# + identifier - Identifiers for the ImagingStudy such as DICOM Study Instance UID.
# + numberOfSeries - Number of Series in the Study. This value given may be larger than the number of series elements this Resource contains due to resource availability, security, or other factors. This element should be present if any series elements are present.
# + started - Date and time the study started.
# + encounter - The healthcare event (e.g. a patient and healthcare provider interaction) during which this ImagingStudy is made.
# + procedure - This field corresponds to the DICOM Procedure Code Sequence (0008,1032). This is different from the FHIR Procedure resource that may include the ImagingStudy.
# + referrer - The requesting/referring physician.
# + contained - These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, nor can they have their own independent transaction scope. This is allowed to be a Parameters resource if and only if it is referenced by a resource that provides context/meaning.
# + meta - The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.
# + series - Each study has one or more series of images or other content.
# + implicitRules - A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.
# + location - The principal physical location where the ImagingStudy was performed.
# + status - The current state of the ImagingStudy resource. This is not the status of any ServiceRequest or Task resources associated with the ImagingStudy.
@r5:ResourceDefinition {
    resourceType: "ImagingStudy",
    baseType: r5:DomainResource,
    profile: "http://hl7.org/fhir/StructureDefinition/ImagingStudy",
    elements: {
        "note" : {
            name: "note",
            dataType: r5:Annotation,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "ImagingStudy.note"
        },
        "partOf" : {
            name: "partOf",
            dataType: r5:Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "ImagingStudy.partOf"
        },
        "reason" : {
            name: "reason",
            dataType: r5:CodeableReference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "ImagingStudy.reason",
            valueSet: "http://hl7.org/fhir/ValueSet/procedure-reason"
        },
        "extension" : {
            name: "extension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "ImagingStudy.extension"
        },
        "modality" : {
            name: "modality",
            dataType: r5:CodeableConcept,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "ImagingStudy.modality",
            valueSet: "http://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_CID_33.html"
        },
        "subject" : {
            name: "subject",
            dataType: r5:Reference,
            min: 1,
            max: 1,
            isArray: false,
            path: "ImagingStudy.subject"
        },
        "modifierExtension" : {
            name: "modifierExtension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "ImagingStudy.modifierExtension"
        },
        "description" : {
            name: "description",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "ImagingStudy.description"
        },
        "language" : {
            name: "language",
            dataType: r5:code,
            min: 0,
            max: 1,
            isArray: false,
            path: "ImagingStudy.language",
            valueSet: "http://hl7.org/fhir/ValueSet/all-languages|5.0.0"
        },
        "endpoint" : {
            name: "endpoint",
            dataType: r5:Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "ImagingStudy.endpoint"
        },
        "numberOfInstances" : {
            name: "numberOfInstances",
            dataType: r5:unsignedInt,
            min: 0,
            max: 1,
            isArray: false,
            path: "ImagingStudy.numberOfInstances"
        },
        "id" : {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "ImagingStudy.id"
        },
        "text" : {
            name: "text",
            dataType: r5:Narrative,
            min: 0,
            max: 1,
            isArray: false,
            path: "ImagingStudy.text"
        },
        "basedOn" : {
            name: "basedOn",
            dataType: r5:Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "ImagingStudy.basedOn"
        },
        "identifier" : {
            name: "identifier",
            dataType: r5:Identifier,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "ImagingStudy.identifier"
        },
        "numberOfSeries" : {
            name: "numberOfSeries",
            dataType: r5:unsignedInt,
            min: 0,
            max: 1,
            isArray: false,
            path: "ImagingStudy.numberOfSeries"
        },
        "started" : {
            name: "started",
            dataType: r5:dateTime,
            min: 0,
            max: 1,
            isArray: false,
            path: "ImagingStudy.started"
        },
        "encounter" : {
            name: "encounter",
            dataType: r5:Reference,
            min: 0,
            max: 1,
            isArray: false,
            path: "ImagingStudy.encounter"
        },
        "procedure" : {
            name: "procedure",
            dataType: r5:CodeableReference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "ImagingStudy.procedure",
            valueSet: "http://loinc.org/vs/loinc-rsna-radiology-playbook"
        },
        "referrer" : {
            name: "referrer",
            dataType: r5:Reference,
            min: 0,
            max: 1,
            isArray: false,
            path: "ImagingStudy.referrer"
        },
        "contained" : {
            name: "contained",
            dataType: r5:Resource,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "ImagingStudy.contained"
        },
        "meta" : {
            name: "meta",
            dataType: r5:Meta,
            min: 0,
            max: 1,
            isArray: false,
            path: "ImagingStudy.meta"
        },
        "series" : {
            name: "series",
            dataType: ImagingStudySeries,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "ImagingStudy.series"
        },
        "implicitRules" : {
            name: "implicitRules",
            dataType: r5:uri,
            min: 0,
            max: 1,
            isArray: false,
            path: "ImagingStudy.implicitRules"
        },
        "location" : {
            name: "location",
            dataType: r5:Reference,
            min: 0,
            max: 1,
            isArray: false,
            path: "ImagingStudy.location"
        },
        "status" : {
            name: "status",
            dataType: ImagingStudyStatus,
            min: 1,
            max: 1,
            isArray: false,
            path: "ImagingStudy.status",
            valueSet: "http://hl7.org/fhir/ValueSet/imagingstudy-status|5.0.0"
        }
    },
    serializers: {
        'xml: r5:fhirResourceXMLSerializer,
        'json: r5:fhirResourceJsonSerializer
    }
}
public type ImagingStudy record {|
    *r5:DomainResource;

    RESOURCE_NAME_IMAGINGSTUDY resourceType = RESOURCE_NAME_IMAGINGSTUDY;

    r5:Annotation[] note?;
    r5:Reference[] partOf?;
    r5:CodeableReference[] reason?;
    r5:Extension[] extension?;
    r5:CodeableConcept[] modality?;
    r5:Reference subject;
    r5:Extension[] modifierExtension?;
    string description?;
    r5:code language?;
    r5:Reference[] endpoint?;
    r5:unsignedInt numberOfInstances?;
    string id?;
    r5:Narrative text?;
    r5:Reference[] basedOn?;
    r5:Identifier[] identifier?;
    r5:unsignedInt numberOfSeries?;
    r5:dateTime started?;
    r5:Reference encounter?;
    r5:CodeableReference[] procedure?;
    r5:Reference referrer?;
    r5:Resource[] contained?;
    r5:Meta meta?;
    ImagingStudySeries[] series?;
    r5:uri implicitRules?;
    r5:Reference location?;
    ImagingStudyStatus status;
    r5:Element ...;
|};

# FHIR ImagingStudySeriesPerformer datatype record.
#
# + actor - Indicates who or what performed the series.
# + extension - May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + 'function - Distinguishes the type of involvement of the performer in the series.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + id - Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
@r5:DataTypeDefinition {
    name: "ImagingStudySeriesPerformer",
    baseType: (),
    elements: {
        "actor": {
            name: "actor",
            dataType: r5:Reference,
            min: 1,
            max: 1,
            isArray: false,
            description: "Indicates who or what performed the series.",
            path: "ImagingStudy.series.performer.actor"
        },
        "extension": {
            name: "extension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
            path: "ImagingStudy.series.performer.extension"
        },
        "function": {
            name: "function",
            dataType: r5:CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            description: "Distinguishes the type of involvement of the performer in the series.",
            path: "ImagingStudy.series.performer.function"
        },
        "modifierExtension": {
            name: "modifierExtension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).",
            path: "ImagingStudy.series.performer.modifierExtension"
        },
        "id": {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
            path: "ImagingStudy.series.performer.id"
        }
    },
    serializers: {
        'xml: r5:complexDataTypeXMLSerializer,
        'json: r5:complexDataTypeJsonSerializer
    }
}
public type ImagingStudySeriesPerformer record {|
    *r5:BackboneElement;

    r5:Reference actor;
    r5:Extension[] extension?;
    r5:CodeableConcept 'function?;
    r5:Extension[] modifierExtension?;
    string id?;
|};

# FHIR ImagingStudySeries datatype record.
#
# + extension - May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + instance - A single SOP instance within the series, e.g. an image, or presentation state.
# + modality - The distinct modality for this series. This may include both acquisition and non-acquisition modalities.
# + performer - Indicates who or what performed the series and how they were involved.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + description - A description of the series.
# + started - The date and time the series was started.
# + laterality - The laterality of the (possibly paired) anatomic structures examined. E.g., the left knee, both lungs, or unpaired abdomen. If present, shall be consistent with any laterality information indicated in ImagingStudy.series.bodySite.
# + number - The numeric identifier of this series in the study.
# + uid - The DICOM Series Instance UID for the series.
# + bodySite - The anatomic structures examined. See DICOM Part 16 Annex L (http://dicom.nema.org/medical/dicom/current/output/chtml/part16/chapter_L.html) for DICOM to SNOMED-CT mappings. The bodySite may indicate the laterality of body part imaged; if so, it shall be consistent with any content of ImagingStudy.series.laterality.
# + endpoint - The network service providing access (e.g., query, view, or retrieval) for this series. See implementation notes for information about using DICOM endpoints. A series-level endpoint, if present, has precedence over a study-level endpoint with the same Endpoint.connectionType.
# + numberOfInstances - Number of SOP Instances in the Study. The value given may be larger than the number of instance elements this resource contains due to resource availability, security, or other factors. This element should be present if any instance elements are present.
# + specimen - The specimen imaged, e.g., for whole slide imaging of a biopsy.
# + id - Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
@r5:DataTypeDefinition {
    name: "ImagingStudySeries",
    baseType: (),
    elements: {
        "extension": {
            name: "extension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
            path: "ImagingStudy.series.extension"
        },
        "instance": {
            name: "instance",
            dataType: ImagingStudySeriesInstance,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "A single SOP instance within the series, e.g. an image, or presentation state.",
            path: "ImagingStudy.series.instance"
        },
        "modality": {
            name: "modality",
            dataType: r5:CodeableConcept,
            min: 1,
            max: 1,
            isArray: false,
            description: "The distinct modality for this series. This may include both acquisition and non-acquisition modalities.",
            path: "ImagingStudy.series.modality"
        },
        "performer": {
            name: "performer",
            dataType: ImagingStudySeriesPerformer,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "Indicates who or what performed the series and how they were involved.",
            path: "ImagingStudy.series.performer"
        },
        "modifierExtension": {
            name: "modifierExtension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).",
            path: "ImagingStudy.series.modifierExtension"
        },
        "description": {
            name: "description",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "A description of the series.",
            path: "ImagingStudy.series.description"
        },
        "started": {
            name: "started",
            dataType: r5:dateTime,
            min: 0,
            max: 1,
            isArray: false,
            description: "The date and time the series was started.",
            path: "ImagingStudy.series.started"
        },
        "laterality": {
            name: "laterality",
            dataType: r5:CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            description: "The laterality of the (possibly paired) anatomic structures examined. E.g., the left knee, both lungs, or unpaired abdomen. If present, shall be consistent with any laterality information indicated in ImagingStudy.series.bodySite.",
            path: "ImagingStudy.series.laterality"
        },
        "number": {
            name: "number",
            dataType: r5:unsignedInt,
            min: 0,
            max: 1,
            isArray: false,
            description: "The numeric identifier of this series in the study.",
            path: "ImagingStudy.series.number"
        },
        "uid": {
            name: "uid",
            dataType: r5:id,
            min: 1,
            max: 1,
            isArray: false,
            description: "The DICOM Series Instance UID for the series.",
            path: "ImagingStudy.series.uid"
        },
        "bodySite": {
            name: "bodySite",
            dataType: r5:CodeableReference,
            min: 0,
            max: 1,
            isArray: false,
            description: "The anatomic structures examined. See DICOM Part 16 Annex L (http://dicom.nema.org/medical/dicom/current/output/chtml/part16/chapter_L.html) for DICOM to SNOMED-CT mappings. The bodySite may indicate the laterality of body part imaged; if so, it shall be consistent with any content of ImagingStudy.series.laterality.",
            path: "ImagingStudy.series.bodySite"
        },
        "endpoint": {
            name: "endpoint",
            dataType: r5:Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "The network service providing access (e.g., query, view, or retrieval) for this series. See implementation notes for information about using DICOM endpoints. A series-level endpoint, if present, has precedence over a study-level endpoint with the same Endpoint.connectionType.",
            path: "ImagingStudy.series.endpoint"
        },
        "numberOfInstances": {
            name: "numberOfInstances",
            dataType: r5:unsignedInt,
            min: 0,
            max: 1,
            isArray: false,
            description: "Number of SOP Instances in the Study. The value given may be larger than the number of instance elements this resource contains due to resource availability, security, or other factors. This element should be present if any instance elements are present.",
            path: "ImagingStudy.series.numberOfInstances"
        },
        "specimen": {
            name: "specimen",
            dataType: r5:Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "The specimen imaged, e.g., for whole slide imaging of a biopsy.",
            path: "ImagingStudy.series.specimen"
        },
        "id": {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
            path: "ImagingStudy.series.id"
        }
    },
    serializers: {
        'xml: r5:complexDataTypeXMLSerializer,
        'json: r5:complexDataTypeJsonSerializer
    }
}
public type ImagingStudySeries record {|
    *r5:BackboneElement;

    r5:Extension[] extension?;
    ImagingStudySeriesInstance[] instance?;
    r5:CodeableConcept modality;
    ImagingStudySeriesPerformer[] performer?;
    r5:Extension[] modifierExtension?;
    string description?;
    r5:dateTime started?;
    r5:CodeableConcept laterality?;
    r5:unsignedInt number?;
    r5:id uid;
    r5:CodeableReference bodySite?;
    r5:Reference[] endpoint?;
    r5:unsignedInt numberOfInstances?;
    r5:Reference[] specimen?;
    string id?;
|};

# ImagingStudyStatus enum
public enum ImagingStudyStatus {
   CODE_STATUS_AVAILABLE = "available",
   CODE_STATUS_REGISTERED = "registered",
   CODE_STATUS_CANCELLED = "cancelled",
   CODE_STATUS_ENTERED_IN_ERROR = "entered-in-error",
   CODE_STATUS_UNKNOWN = "unknown"
}

# FHIR ImagingStudySeriesInstance datatype record.
#
# + number - The number of instance in the series.
# + uid - The DICOM SOP Instance UID for this image or other DICOM content.
# + extension - May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + sopClass - DICOM instance type.
# + id - Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
# + title - The description of the instance.
@r5:DataTypeDefinition {
    name: "ImagingStudySeriesInstance",
    baseType: (),
    elements: {
        "number": {
            name: "number",
            dataType: r5:unsignedInt,
            min: 0,
            max: 1,
            isArray: false,
            description: "The number of instance in the series.",
            path: "ImagingStudy.series.instance.number"
        },
        "uid": {
            name: "uid",
            dataType: r5:id,
            min: 1,
            max: 1,
            isArray: false,
            description: "The DICOM SOP Instance UID for this image or other DICOM content.",
            path: "ImagingStudy.series.instance.uid"
        },
        "extension": {
            name: "extension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
            path: "ImagingStudy.series.instance.extension"
        },
        "modifierExtension": {
            name: "modifierExtension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).",
            path: "ImagingStudy.series.instance.modifierExtension"
        },
        "sopClass": {
            name: "sopClass",
            dataType: r5:Coding,
            min: 1,
            max: 1,
            isArray: false,
            description: "DICOM instance type.",
            path: "ImagingStudy.series.instance.sopClass"
        },
        "id": {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
            path: "ImagingStudy.series.instance.id"
        },
        "title": {
            name: "title",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "The description of the instance.",
            path: "ImagingStudy.series.instance.title"
        }
    },
    serializers: {
        'xml: r5:complexDataTypeXMLSerializer,
        'json: r5:complexDataTypeJsonSerializer
    }
}
public type ImagingStudySeriesInstance record {|
    *r5:BackboneElement;

    r5:unsignedInt number?;
    r5:id uid;
    r5:Extension[] extension?;
    r5:Extension[] modifierExtension?;
    r5:Coding sopClass;
    string id?;
    string title?;
|};

