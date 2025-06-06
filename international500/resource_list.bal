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

public const string PROFILE_BASE_LIST = "http://hl7.org/fhir/StructureDefinition/List";
public const RESOURCE_NAME_LIST = "List";

# FHIR List resource record.
#
# + resourceType - The type of the resource describes
# + date - Date list was last reviewed/revised and determined to be 'current'.
# + identifier - Identifier for the List assigned for business purposes outside the context of FHIR.
# + note - Comments that apply to the overall list.
# + extension - May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + code - This code defines the purpose of the list - why it was created.
# + emptyReason - If the list is empty, why the list is empty.
# + subject - The common subject(s) (or patient(s)) of the resources that are in the list if there is one (or a set of subjects).
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + language - The base language in which the resource is written.
# + encounter - The encounter that is the context in which this list was created.
# + 'source - The entity responsible for deciding what the contents of the list were. Where the list was created by a human, this is the same as the author of the list.
# + title - A label for the list assigned by the author.
# + mode - How this list was prepared - whether it is a working list that is suitable for being maintained on an ongoing basis, or if it represents a snapshot of a list of items from another source, or whether it is a prepared list where items may be marked as added, modified or deleted.
# + entry - Entries in this list.
# + contained - These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, nor can they have their own independent transaction scope. This is allowed to be a Parameters resource if and only if it is referenced by a resource that provides context/meaning.
# + orderedBy - What order applies to the items in the list.
# + meta - The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.
# + implicitRules - A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.
# + id - The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.
# + text - A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it 'clinically safe' for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.
# + status - Indicates the current state of this list.
@r5:ResourceDefinition {
    resourceType: "List",
    baseType: r5:DomainResource,
    profile: "http://hl7.org/fhir/StructureDefinition/List",
    elements: {
        "date" : {
            name: "date",
            dataType: r5:dateTime,
            min: 0,
            max: 1,
            isArray: false,
            path: "List.date"
        },
        "identifier" : {
            name: "identifier",
            dataType: r5:Identifier,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "List.identifier"
        },
        "note" : {
            name: "note",
            dataType: r5:Annotation,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "List.note"
        },
        "extension" : {
            name: "extension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "List.extension"
        },
        "code" : {
            name: "code",
            dataType: r5:CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            path: "List.code",
            valueSet: "http://hl7.org/fhir/ValueSet/list-example-codes"
        },
        "emptyReason" : {
            name: "emptyReason",
            dataType: r5:CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            path: "List.emptyReason",
            valueSet: "http://hl7.org/fhir/ValueSet/list-empty-reason"
        },
        "subject" : {
            name: "subject",
            dataType: r5:Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "List.subject"
        },
        "modifierExtension" : {
            name: "modifierExtension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "List.modifierExtension"
        },
        "language" : {
            name: "language",
            dataType: r5:code,
            min: 0,
            max: 1,
            isArray: false,
            path: "List.language",
            valueSet: "http://hl7.org/fhir/ValueSet/all-languages|5.0.0"
        },
        "encounter" : {
            name: "encounter",
            dataType: r5:Reference,
            min: 0,
            max: 1,
            isArray: false,
            path: "List.encounter"
        },
        "source" : {
            name: "source",
            dataType: r5:Reference,
            min: 0,
            max: 1,
            isArray: false,
            path: "List.source"
        },
        "title" : {
            name: "title",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "List.title"
        },
        "mode" : {
            name: "mode",
            dataType: ListMode,
            min: 1,
            max: 1,
            isArray: false,
            path: "List.mode",
            valueSet: "http://hl7.org/fhir/ValueSet/list-mode|5.0.0"
        },
        "entry" : {
            name: "entry",
            dataType: ListEntry,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "List.entry"
        },
        "contained" : {
            name: "contained",
            dataType: r5:Resource,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "List.contained"
        },
        "orderedBy" : {
            name: "orderedBy",
            dataType: r5:CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            path: "List.orderedBy",
            valueSet: "http://hl7.org/fhir/ValueSet/list-order"
        },
        "meta" : {
            name: "meta",
            dataType: r5:Meta,
            min: 0,
            max: 1,
            isArray: false,
            path: "List.meta"
        },
        "implicitRules" : {
            name: "implicitRules",
            dataType: r5:uri,
            min: 0,
            max: 1,
            isArray: false,
            path: "List.implicitRules"
        },
        "id" : {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "List.id"
        },
        "text" : {
            name: "text",
            dataType: r5:Narrative,
            min: 0,
            max: 1,
            isArray: false,
            path: "List.text"
        },
        "status" : {
            name: "status",
            dataType: ListStatus,
            min: 1,
            max: 1,
            isArray: false,
            path: "List.status",
            valueSet: "http://hl7.org/fhir/ValueSet/list-status|5.0.0"
        }
    },
    serializers: {
        'xml: r5:fhirResourceXMLSerializer,
        'json: r5:fhirResourceJsonSerializer
    }
}
public type List record {|
    *r5:DomainResource;

    RESOURCE_NAME_LIST resourceType = RESOURCE_NAME_LIST;

    r5:dateTime date?;
    r5:Identifier[] identifier?;
    r5:Annotation[] note?;
    r5:Extension[] extension?;
    r5:CodeableConcept code?;
    r5:CodeableConcept emptyReason?;
    r5:Reference[] subject?;
    r5:Extension[] modifierExtension?;
    r5:code language?;
    r5:Reference encounter?;
    r5:Reference 'source?;
    string title?;
    ListMode mode;
    ListEntry[] entry?;
    r5:Resource[] contained?;
    r5:CodeableConcept orderedBy?;
    r5:Meta meta?;
    r5:uri implicitRules?;
    string id?;
    r5:Narrative text?;
    ListStatus status;
    r5:Element ...;
|};

# ListStatus enum
public enum ListStatus {
   CODE_STATUS_CURRENT = "current",
   CODE_STATUS_RETIRED = "retired",
   CODE_STATUS_ENTERED_IN_ERROR = "entered-in-error"
}

# ListMode enum
public enum ListMode {
   CODE_MODE_CHANGES = "changes",
   CODE_MODE_WORKING = "working",
   CODE_MODE_SNAPSHOT = "snapshot"
}

# FHIR ListEntry datatype record.
#
# + date - When this item was added to the list.
# + extension - May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + item - A reference to the actual resource from which data was derived.
# + deleted - True if this item is marked as deleted in the list.
# + flag - The flag allows the system constructing the list to indicate the role and significance of the item in the list.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + id - Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
@r5:DataTypeDefinition {
    name: "ListEntry",
    baseType: (),
    elements: {
        "date": {
            name: "date",
            dataType: r5:dateTime,
            min: 0,
            max: 1,
            isArray: false,
            description: "When this item was added to the list.",
            path: "List.entry.date"
        },
        "extension": {
            name: "extension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
            path: "List.entry.extension"
        },
        "item": {
            name: "item",
            dataType: r5:Reference,
            min: 1,
            max: 1,
            isArray: false,
            description: "A reference to the actual resource from which data was derived.",
            path: "List.entry.item"
        },
        "deleted": {
            name: "deleted",
            dataType: boolean,
            min: 0,
            max: 1,
            isArray: false,
            description: "True if this item is marked as deleted in the list.",
            path: "List.entry.deleted"
        },
        "flag": {
            name: "flag",
            dataType: r5:CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            description: "The flag allows the system constructing the list to indicate the role and significance of the item in the list.",
            path: "List.entry.flag"
        },
        "modifierExtension": {
            name: "modifierExtension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).",
            path: "List.entry.modifierExtension"
        },
        "id": {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
            path: "List.entry.id"
        }
    },
    serializers: {
        'xml: r5:complexDataTypeXMLSerializer,
        'json: r5:complexDataTypeJsonSerializer
    }
}
public type ListEntry record {|
    *r5:BackboneElement;

    r5:dateTime date?;
    r5:Extension[] extension?;
    r5:Reference item;
    boolean deleted?;
    r5:CodeableConcept flag?;
    r5:Extension[] modifierExtension?;
    string id?;
|};

