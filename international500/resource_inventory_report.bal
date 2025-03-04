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

public const string PROFILE_BASE_INVENTORYREPORT = "http://hl7.org/fhir/StructureDefinition/InventoryReport";
public const RESOURCE_NAME_INVENTORYREPORT = "InventoryReport";

# FHIR InventoryReport resource record.
#
# + resourceType - The type of the resource describes
# + identifier - Business identifier for the InventoryReport.
# + note - A note associated with the InventoryReport.
# + extension - May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + reportingPeriod - The period the report refers to.
# + inventoryListing - An inventory listing section (grouped by any of the attributes).
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + operationTypeReason - The reason for this count - regular count, ad-hoc count, new arrivals, etc.
# + language - The base language in which the resource is written.
# + reportedDateTime - When the report has been submitted.
# + reporter - Who submits the report.
# + contained - These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, nor can they have their own independent transaction scope. This is allowed to be a Parameters resource if and only if it is referenced by a resource that provides context/meaning.
# + meta - The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.
# + implicitRules - A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.
# + operationType - What type of operation is being performed - addition or subtraction.
# + countType - Whether the report is about the current inventory count (snapshot) or a differential change in inventory (change).
# + id - The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.
# + text - A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it 'clinically safe' for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.
# + status - The status of the inventory check or notification - whether this is draft (e.g. the report is still pending some updates) or active.
@r5:ResourceDefinition {
    resourceType: "InventoryReport",
    baseType: r5:DomainResource,
    profile: "http://hl7.org/fhir/StructureDefinition/InventoryReport",
    elements: {
        "identifier" : {
            name: "identifier",
            dataType: r5:Identifier,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "InventoryReport.identifier"
        },
        "note" : {
            name: "note",
            dataType: r5:Annotation,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "InventoryReport.note"
        },
        "extension" : {
            name: "extension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "InventoryReport.extension"
        },
        "reportingPeriod" : {
            name: "reportingPeriod",
            dataType: r5:Period,
            min: 0,
            max: 1,
            isArray: false,
            path: "InventoryReport.reportingPeriod"
        },
        "inventoryListing" : {
            name: "inventoryListing",
            dataType: InventoryReportInventoryListing,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "InventoryReport.inventoryListing"
        },
        "modifierExtension" : {
            name: "modifierExtension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "InventoryReport.modifierExtension"
        },
        "operationTypeReason" : {
            name: "operationTypeReason",
            dataType: r5:CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            path: "InventoryReport.operationTypeReason"
        },
        "language" : {
            name: "language",
            dataType: r5:code,
            min: 0,
            max: 1,
            isArray: false,
            path: "InventoryReport.language",
            valueSet: "http://hl7.org/fhir/ValueSet/all-languages|5.0.0"
        },
        "reportedDateTime" : {
            name: "reportedDateTime",
            dataType: r5:dateTime,
            min: 1,
            max: 1,
            isArray: false,
            path: "InventoryReport.reportedDateTime"
        },
        "reporter" : {
            name: "reporter",
            dataType: r5:Reference,
            min: 0,
            max: 1,
            isArray: false,
            path: "InventoryReport.reporter"
        },
        "contained" : {
            name: "contained",
            dataType: r5:Resource,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "InventoryReport.contained"
        },
        "meta" : {
            name: "meta",
            dataType: r5:Meta,
            min: 0,
            max: 1,
            isArray: false,
            path: "InventoryReport.meta"
        },
        "implicitRules" : {
            name: "implicitRules",
            dataType: r5:uri,
            min: 0,
            max: 1,
            isArray: false,
            path: "InventoryReport.implicitRules"
        },
        "operationType" : {
            name: "operationType",
            dataType: r5:CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            path: "InventoryReport.operationType"
        },
        "countType" : {
            name: "countType",
            dataType: InventoryReportCountType,
            min: 1,
            max: 1,
            isArray: false,
            path: "InventoryReport.countType",
            valueSet: "http://hl7.org/fhir/ValueSet/inventoryreport-counttype|5.0.0"
        },
        "id" : {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "InventoryReport.id"
        },
        "text" : {
            name: "text",
            dataType: r5:Narrative,
            min: 0,
            max: 1,
            isArray: false,
            path: "InventoryReport.text"
        },
        "status" : {
            name: "status",
            dataType: InventoryReportStatus,
            min: 1,
            max: 1,
            isArray: false,
            path: "InventoryReport.status",
            valueSet: "http://hl7.org/fhir/ValueSet/inventoryreport-status|5.0.0"
        }
    },
    serializers: {
        'xml: r5:fhirResourceXMLSerializer,
        'json: r5:fhirResourceJsonSerializer
    }
}
public type InventoryReport record {|
    *r5:DomainResource;

    RESOURCE_NAME_INVENTORYREPORT resourceType = RESOURCE_NAME_INVENTORYREPORT;

    r5:Identifier[] identifier?;
    r5:Annotation[] note?;
    r5:Extension[] extension?;
    r5:Period reportingPeriod?;
    InventoryReportInventoryListing[] inventoryListing?;
    r5:Extension[] modifierExtension?;
    r5:CodeableConcept operationTypeReason?;
    r5:code language?;
    r5:dateTime reportedDateTime;
    r5:Reference reporter?;
    r5:Resource[] contained?;
    r5:Meta meta?;
    r5:uri implicitRules?;
    r5:CodeableConcept operationType?;
    InventoryReportCountType countType;
    string id?;
    r5:Narrative text?;
    InventoryReportStatus status;
    r5:Element ...;
|};

# InventoryReportCountType enum
public enum InventoryReportCountType {
   CODE_COUNTTYPE_DIFFERENCE = "difference",
   CODE_COUNTTYPE_SNAPSHOT = "snapshot"
}

# InventoryReportStatus enum
public enum InventoryReportStatus {
   CODE_STATUS_REQUESTED = "requested",
   CODE_STATUS_DRAFT = "draft",
   CODE_STATUS_ACTIVE = "active",
   CODE_STATUS_ENTERED_IN_ERROR = "entered-in-error"
}

# FHIR InventoryReportInventoryListingItem datatype record.
#
# + extension - May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + item - The code or reference to the item type.
# + quantity - The quantity of the item or items being reported.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + id - Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
# + category - The inventory category or classification of the items being reported. This is meant not for defining the product, but for inventory categories e.g. 'pending recount' or 'damaged'.
@r5:DataTypeDefinition {
    name: "InventoryReportInventoryListingItem",
    baseType: (),
    elements: {
        "extension": {
            name: "extension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
            path: "InventoryReport.inventoryListing.item.extension"
        },
        "item": {
            name: "item",
            dataType: r5:CodeableReference,
            min: 1,
            max: 1,
            isArray: false,
            description: "The code or reference to the item type.",
            path: "InventoryReport.inventoryListing.item.item"
        },
        "quantity": {
            name: "quantity",
            dataType: r5:Quantity,
            min: 1,
            max: 1,
            isArray: false,
            description: "The quantity of the item or items being reported.",
            path: "InventoryReport.inventoryListing.item.quantity"
        },
        "modifierExtension": {
            name: "modifierExtension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).",
            path: "InventoryReport.inventoryListing.item.modifierExtension"
        },
        "id": {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
            path: "InventoryReport.inventoryListing.item.id"
        },
        "category": {
            name: "category",
            dataType: r5:CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            description: "The inventory category or classification of the items being reported. This is meant not for defining the product, but for inventory categories e.g. 'pending recount' or 'damaged'.",
            path: "InventoryReport.inventoryListing.item.category"
        }
    },
    serializers: {
        'xml: r5:complexDataTypeXMLSerializer,
        'json: r5:complexDataTypeJsonSerializer
    }
}
public type InventoryReportInventoryListingItem record {|
    *r5:BackboneElement;

    r5:Extension[] extension?;
    r5:CodeableReference item;
    r5:Quantity quantity;
    r5:Extension[] modifierExtension?;
    string id?;
    r5:CodeableConcept category?;
|};

# FHIR InventoryReportInventoryListing datatype record.
#
# + countingDateTime - The date and time when the items were counted.
# + extension - May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + item - The item or items in this listing.
# + itemStatus - The status of the items.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + location - Location of the inventory items.
# + id - Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
@r5:DataTypeDefinition {
    name: "InventoryReportInventoryListing",
    baseType: (),
    elements: {
        "countingDateTime": {
            name: "countingDateTime",
            dataType: r5:dateTime,
            min: 0,
            max: 1,
            isArray: false,
            description: "The date and time when the items were counted.",
            path: "InventoryReport.inventoryListing.countingDateTime"
        },
        "extension": {
            name: "extension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
            path: "InventoryReport.inventoryListing.extension"
        },
        "item": {
            name: "item",
            dataType: InventoryReportInventoryListingItem,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "The item or items in this listing.",
            path: "InventoryReport.inventoryListing.item"
        },
        "itemStatus": {
            name: "itemStatus",
            dataType: r5:CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            description: "The status of the items.",
            path: "InventoryReport.inventoryListing.itemStatus"
        },
        "modifierExtension": {
            name: "modifierExtension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).",
            path: "InventoryReport.inventoryListing.modifierExtension"
        },
        "location": {
            name: "location",
            dataType: r5:Reference,
            min: 0,
            max: 1,
            isArray: false,
            description: "Location of the inventory items.",
            path: "InventoryReport.inventoryListing.location"
        },
        "id": {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
            path: "InventoryReport.inventoryListing.id"
        }
    },
    serializers: {
        'xml: r5:complexDataTypeXMLSerializer,
        'json: r5:complexDataTypeJsonSerializer
    }
}
public type InventoryReportInventoryListing record {|
    *r5:BackboneElement;

    r5:dateTime countingDateTime?;
    r5:Extension[] extension?;
    InventoryReportInventoryListingItem[] item?;
    r5:CodeableConcept itemStatus?;
    r5:Extension[] modifierExtension?;
    r5:Reference location?;
    string id?;
|};

