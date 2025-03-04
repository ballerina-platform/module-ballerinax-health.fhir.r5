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

public const string PROFILE_BASE_DEVICEMETRIC = "http://hl7.org/fhir/StructureDefinition/DeviceMetric";
public const RESOURCE_NAME_DEVICEMETRIC = "DeviceMetric";

# FHIR DeviceMetric resource record.
#
# + resourceType - The type of the resource describes
# + operationalStatus - Indicates current operational state of the device. For example: On, Off, Standby, etc.
# + identifier - Instance identifiers assigned to a device, by the device or gateway software, manufacturers, other organizations or owners. For example, handle ID.
# + extension - May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + color - The preferred color associated with the metric (e.g., display color). This is often used to aid clinicians to track and identify parameter types by color. In practice, consider a Patient Monitor that has ECG/HR and Pleth; the metrics are displayed in different characteristic colors, such as HR in blue, BP in green, and PR and SpO2 in magenta.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + measurementFrequency - The frequency at which the metric is taken or recorded. Devices measure metrics at a wide range of frequencies; for example, an ECG might sample measurements in the millisecond range, while an NIBP might trigger only once an hour. Less often, the measurementFrequency may be based on a unit other than time, such as distance (e.g. for a measuring wheel). The update period may be different than the measurement frequency, if the device does not update the published observed value with the same frequency as it was measured.
# + language - The base language in which the resource is written.
# + 'type - Describes the type of the metric. For example: Heart Rate, PEEP Setting, etc.
# + contained - These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, nor can they have their own independent transaction scope. This is allowed to be a Parameters resource if and only if it is referenced by a resource that provides context/meaning.
# + unit - Describes the unit that an observed value determined for this metric will have. For example: Percent, Seconds, etc.
# + meta - The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.
# + implicitRules - A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.
# + id - The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.
# + text - A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it 'clinically safe' for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.
# + category - Indicates the category of the observation generation process. A DeviceMetric can be for example a setting, measurement, or calculation.
# + calibration - Describes the calibrations that have been performed or that are required to be performed.
# + device - Describes the link to the Device. This is also known as a channel device.
@r5:ResourceDefinition {
    resourceType: "DeviceMetric",
    baseType: r5:DomainResource,
    profile: "http://hl7.org/fhir/StructureDefinition/DeviceMetric",
    elements: {
        "operationalStatus" : {
            name: "operationalStatus",
            dataType: DeviceMetricOperationalStatus,
            min: 0,
            max: 1,
            isArray: false,
            path: "DeviceMetric.operationalStatus",
            valueSet: "http://hl7.org/fhir/ValueSet/metric-operational-status|5.0.0"
        },
        "identifier" : {
            name: "identifier",
            dataType: r5:Identifier,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "DeviceMetric.identifier"
        },
        "extension" : {
            name: "extension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "DeviceMetric.extension"
        },
        "color" : {
            name: "color",
            dataType: r5:code,
            min: 0,
            max: 1,
            isArray: false,
            path: "DeviceMetric.color",
            valueSet: "http://hl7.org/fhir/ValueSet/color-codes|5.0.0"
        },
        "modifierExtension" : {
            name: "modifierExtension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "DeviceMetric.modifierExtension"
        },
        "measurementFrequency" : {
            name: "measurementFrequency",
            dataType: r5:Quantity,
            min: 0,
            max: 1,
            isArray: false,
            path: "DeviceMetric.measurementFrequency"
        },
        "language" : {
            name: "language",
            dataType: r5:code,
            min: 0,
            max: 1,
            isArray: false,
            path: "DeviceMetric.language",
            valueSet: "http://hl7.org/fhir/ValueSet/all-languages|5.0.0"
        },
        "type" : {
            name: "type",
            dataType: r5:CodeableConcept,
            min: 1,
            max: 1,
            isArray: false,
            path: "DeviceMetric.type",
            valueSet: "http://hl7.org/fhir/ValueSet/devicemetric-type"
        },
        "contained" : {
            name: "contained",
            dataType: r5:Resource,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "DeviceMetric.contained"
        },
        "unit" : {
            name: "unit",
            dataType: r5:CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            path: "DeviceMetric.unit",
            valueSet: "http://hl7.org/fhir/ValueSet/ucum-units"
        },
        "meta" : {
            name: "meta",
            dataType: r5:Meta,
            min: 0,
            max: 1,
            isArray: false,
            path: "DeviceMetric.meta"
        },
        "implicitRules" : {
            name: "implicitRules",
            dataType: r5:uri,
            min: 0,
            max: 1,
            isArray: false,
            path: "DeviceMetric.implicitRules"
        },
        "id" : {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "DeviceMetric.id"
        },
        "text" : {
            name: "text",
            dataType: r5:Narrative,
            min: 0,
            max: 1,
            isArray: false,
            path: "DeviceMetric.text"
        },
        "category" : {
            name: "category",
            dataType: DeviceMetricCategory,
            min: 1,
            max: 1,
            isArray: false,
            path: "DeviceMetric.category",
            valueSet: "http://hl7.org/fhir/ValueSet/metric-category|5.0.0"
        },
        "calibration" : {
            name: "calibration",
            dataType: DeviceMetricCalibration,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "DeviceMetric.calibration"
        },
        "device" : {
            name: "device",
            dataType: r5:Reference,
            min: 1,
            max: 1,
            isArray: false,
            path: "DeviceMetric.device"
        }
    },
    serializers: {
        'xml: r5:fhirResourceXMLSerializer,
        'json: r5:fhirResourceJsonSerializer
    }
}
public type DeviceMetric record {|
    *r5:DomainResource;

    RESOURCE_NAME_DEVICEMETRIC resourceType = RESOURCE_NAME_DEVICEMETRIC;

    DeviceMetricOperationalStatus operationalStatus?;
    r5:Identifier[] identifier?;
    r5:Extension[] extension?;
    r5:code color?;
    r5:Extension[] modifierExtension?;
    r5:Quantity measurementFrequency?;
    r5:code language?;
    r5:CodeableConcept 'type;
    r5:Resource[] contained?;
    r5:CodeableConcept unit?;
    r5:Meta meta?;
    r5:uri implicitRules?;
    string id?;
    r5:Narrative text?;
    DeviceMetricCategory category;
    DeviceMetricCalibration[] calibration?;
    r5:Reference device;
    r5:Element ...;
|};

# DeviceMetricCalibrationType enum
public enum DeviceMetricCalibrationType {
   CODE_TYPE_OFFSET = "offset",
   CODE_TYPE_UNSPECIFIED = "unspecified",
   CODE_TYPE_TWO_POINT = "two-point",
   CODE_TYPE_GAIN = "gain"
}

# DeviceMetricCalibrationState enum
public enum DeviceMetricCalibrationState {
   CODE_STATE_UNSPECIFIED = "unspecified",
   CODE_STATE_NOT_CALIBRATED = "not-calibrated",
   CODE_STATE_CALIBRATION_REQUIRED = "calibration-required",
   CODE_STATE_CALIBRATED = "calibrated"
}

# FHIR DeviceMetricCalibration datatype record.
#
# + extension - May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + id - Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
# + state - Describes the state of the calibration.
# + time - Describes the time last calibration has been performed.
# + 'type - Describes the type of the calibration method.
@r5:DataTypeDefinition {
    name: "DeviceMetricCalibration",
    baseType: (),
    elements: {
        "extension": {
            name: "extension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
            path: "DeviceMetric.calibration.extension"
        },
        "modifierExtension": {
            name: "modifierExtension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).",
            path: "DeviceMetric.calibration.modifierExtension"
        },
        "id": {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
            path: "DeviceMetric.calibration.id"
        },
        "state": {
            name: "state",
            dataType: DeviceMetricCalibrationState,
            min: 0,
            max: 1,
            isArray: false,
            description: "Describes the state of the calibration.",
            path: "DeviceMetric.calibration.state"
        },
        "time": {
            name: "time",
            dataType: r5:instant,
            min: 0,
            max: 1,
            isArray: false,
            description: "Describes the time last calibration has been performed.",
            path: "DeviceMetric.calibration.time"
        },
        "type": {
            name: "type",
            dataType: DeviceMetricCalibrationType,
            min: 0,
            max: 1,
            isArray: false,
            description: "Describes the type of the calibration method.",
            path: "DeviceMetric.calibration.type"
        }
    },
    serializers: {
        'xml: r5:complexDataTypeXMLSerializer,
        'json: r5:complexDataTypeJsonSerializer
    }
}
public type DeviceMetricCalibration record {|
    *r5:BackboneElement;

    r5:Extension[] extension?;
    r5:Extension[] modifierExtension?;
    string id?;
    DeviceMetricCalibrationState state?;
    r5:instant time?;
    DeviceMetricCalibrationType 'type?;
|};

# DeviceMetricOperationalStatus enum
public enum DeviceMetricOperationalStatus {
   CODE_OPERATIONALSTATUS_STANDBY = "standby",
   CODE_OPERATIONALSTATUS_ENTERED_IN_ERROR = "entered-in-error",
   CODE_OPERATIONALSTATUS_OFF = "off",
   CODE_OPERATIONALSTATUS_ON = "on"
}

# DeviceMetricCategory enum
public enum DeviceMetricCategory {
   CODE_CATEGORY_CALCULATION = "calculation",
   CODE_CATEGORY_UNSPECIFIED = "unspecified",
   CODE_CATEGORY_MEASUREMENT = "measurement",
   CODE_CATEGORY_SETTING = "setting"
}

