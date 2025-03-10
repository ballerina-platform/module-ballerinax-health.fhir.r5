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

public const string PROFILE_BASE_PERMISSION = "http://hl7.org/fhir/StructureDefinition/Permission";
public const RESOURCE_NAME_PERMISSION = "Permission";

# FHIR Permission resource record.
#
# + resourceType - The type of the resource describes
# + date - The date that permission was asserted.
# + extension - May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + rule - A set of rules.
# + combining - Defines a procedure for arriving at an access decision given the set of rules.
# + language - The base language in which the resource is written.
# + contained - These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, nor can they have their own independent transaction scope. This is allowed to be a Parameters resource if and only if it is referenced by a resource that provides context/meaning.
# + asserter - The person or entity that asserts the permission.
# + meta - The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.
# + implicitRules - A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.
# + id - The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.
# + justification - The asserted justification for using the data.
# + text - A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it 'clinically safe' for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.
# + validity - The period in which the permission is active.
# + status - Status.
@r5:ResourceDefinition {
    resourceType: "Permission",
    baseType: r5:DomainResource,
    profile: "http://hl7.org/fhir/StructureDefinition/Permission",
    elements: {
        "date" : {
            name: "date",
            dataType: r5:dateTime,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Permission.date"
        },
        "extension" : {
            name: "extension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Permission.extension"
        },
        "modifierExtension" : {
            name: "modifierExtension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Permission.modifierExtension"
        },
        "rule" : {
            name: "rule",
            dataType: PermissionRule,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Permission.rule"
        },
        "combining" : {
            name: "combining",
            dataType: PermissionCombining,
            min: 1,
            max: 1,
            isArray: false,
            path: "Permission.combining",
            valueSet: "http://hl7.org/fhir/ValueSet/permission-rule-combining|5.0.0"
        },
        "language" : {
            name: "language",
            dataType: r5:code,
            min: 0,
            max: 1,
            isArray: false,
            path: "Permission.language",
            valueSet: "http://hl7.org/fhir/ValueSet/all-languages|5.0.0"
        },
        "contained" : {
            name: "contained",
            dataType: r5:Resource,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Permission.contained"
        },
        "asserter" : {
            name: "asserter",
            dataType: r5:Reference,
            min: 0,
            max: 1,
            isArray: false,
            path: "Permission.asserter"
        },
        "meta" : {
            name: "meta",
            dataType: r5:Meta,
            min: 0,
            max: 1,
            isArray: false,
            path: "Permission.meta"
        },
        "implicitRules" : {
            name: "implicitRules",
            dataType: r5:uri,
            min: 0,
            max: 1,
            isArray: false,
            path: "Permission.implicitRules"
        },
        "id" : {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "Permission.id"
        },
        "justification" : {
            name: "justification",
            dataType: PermissionJustification,
            min: 0,
            max: 1,
            isArray: false,
            path: "Permission.justification"
        },
        "text" : {
            name: "text",
            dataType: r5:Narrative,
            min: 0,
            max: 1,
            isArray: false,
            path: "Permission.text"
        },
        "validity" : {
            name: "validity",
            dataType: r5:Period,
            min: 0,
            max: 1,
            isArray: false,
            path: "Permission.validity"
        },
        "status" : {
            name: "status",
            dataType: PermissionStatus,
            min: 1,
            max: 1,
            isArray: false,
            path: "Permission.status",
            valueSet: "http://hl7.org/fhir/ValueSet/permission-status|5.0.0"
        }
    },
    serializers: {
        'xml: r5:fhirResourceXMLSerializer,
        'json: r5:fhirResourceJsonSerializer
    }
}
public type Permission record {|
    *r5:DomainResource;

    RESOURCE_NAME_PERMISSION resourceType = RESOURCE_NAME_PERMISSION;

    r5:dateTime[] date?;
    r5:Extension[] extension?;
    r5:Extension[] modifierExtension?;
    PermissionRule[] rule?;
    PermissionCombining combining;
    r5:code language?;
    r5:Resource[] contained?;
    r5:Reference asserter?;
    r5:Meta meta?;
    r5:uri implicitRules?;
    string id?;
    PermissionJustification justification?;
    r5:Narrative text?;
    r5:Period validity?;
    PermissionStatus status;
    r5:Element ...;
|};

# FHIR PermissionRuleDataResource datatype record.
#
# + reference - A reference to a specific resource that defines which resources are covered by this consent.
# + extension - May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + meaning - How the resource reference is interpreted when testing consent restrictions.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + id - Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
@r5:DataTypeDefinition {
    name: "PermissionRuleDataResource",
    baseType: (),
    elements: {
        "reference": {
            name: "reference",
            dataType: r5:Reference,
            min: 1,
            max: 1,
            isArray: false,
            description: "A reference to a specific resource that defines which resources are covered by this consent.",
            path: "Permission.rule.data.resource.reference"
        },
        "extension": {
            name: "extension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
            path: "Permission.rule.data.resource.extension"
        },
        "meaning": {
            name: "meaning",
            dataType: PermissionRuleDataResourceMeaning,
            min: 1,
            max: 1,
            isArray: false,
            description: "How the resource reference is interpreted when testing consent restrictions.",
            path: "Permission.rule.data.resource.meaning"
        },
        "modifierExtension": {
            name: "modifierExtension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).",
            path: "Permission.rule.data.resource.modifierExtension"
        },
        "id": {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
            path: "Permission.rule.data.resource.id"
        }
    },
    serializers: {
        'xml: r5:complexDataTypeXMLSerializer,
        'json: r5:complexDataTypeJsonSerializer
    }
}
public type PermissionRuleDataResource record {|
    *r5:BackboneElement;

    r5:Reference reference;
    r5:Extension[] extension?;
    PermissionRuleDataResourceMeaning meaning;
    r5:Extension[] modifierExtension?;
    string id?;
|};

# PermissionRuleType enum
public enum PermissionRuleType {
   CODE_TYPE_DENY = "deny",
   CODE_TYPE_PERMIT = "permit"
}

# FHIR PermissionRuleActivity datatype record.
#
# + actor - The actor(s) authorized for the defined activity.
# + extension - May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + purpose - The purpose for which the permission is given.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + action - Actions controlled by this Rule.
# + id - Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
@r5:DataTypeDefinition {
    name: "PermissionRuleActivity",
    baseType: (),
    elements: {
        "actor": {
            name: "actor",
            dataType: r5:Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "The actor(s) authorized for the defined activity.",
            path: "Permission.rule.activity.actor"
        },
        "extension": {
            name: "extension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
            path: "Permission.rule.activity.extension"
        },
        "purpose": {
            name: "purpose",
            dataType: r5:CodeableConcept,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "The purpose for which the permission is given.",
            path: "Permission.rule.activity.purpose"
        },
        "modifierExtension": {
            name: "modifierExtension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).",
            path: "Permission.rule.activity.modifierExtension"
        },
        "action": {
            name: "action",
            dataType: r5:CodeableConcept,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "Actions controlled by this Rule.",
            path: "Permission.rule.activity.action"
        },
        "id": {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
            path: "Permission.rule.activity.id"
        }
    },
    serializers: {
        'xml: r5:complexDataTypeXMLSerializer,
        'json: r5:complexDataTypeJsonSerializer
    }
}
public type PermissionRuleActivity record {|
    *r5:BackboneElement;

    r5:Reference[] actor?;
    r5:Extension[] extension?;
    r5:CodeableConcept[] purpose?;
    r5:Extension[] modifierExtension?;
    r5:CodeableConcept[] action?;
    string id?;
|};

# FHIR PermissionRule datatype record.
#
# + extension - May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + activity - A description or definition of which activities are allowed to be done on the data.
# + data - A description or definition of which activities are allowed to be done on the data.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + 'limit - What limits apply to the use of the data.
# + id - Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
# + 'type - deny | permit.
@r5:DataTypeDefinition {
    name: "PermissionRule",
    baseType: (),
    elements: {
        "extension": {
            name: "extension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
            path: "Permission.rule.extension"
        },
        "activity": {
            name: "activity",
            dataType: PermissionRuleActivity,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "A description or definition of which activities are allowed to be done on the data.",
            path: "Permission.rule.activity"
        },
        "data": {
            name: "data",
            dataType: PermissionRuleData,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "A description or definition of which activities are allowed to be done on the data.",
            path: "Permission.rule.data"
        },
        "modifierExtension": {
            name: "modifierExtension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).",
            path: "Permission.rule.modifierExtension"
        },
        "limit": {
            name: "limit",
            dataType: r5:CodeableConcept,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "What limits apply to the use of the data.",
            path: "Permission.rule.limit"
        },
        "id": {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
            path: "Permission.rule.id"
        },
        "type": {
            name: "type",
            dataType: PermissionRuleType,
            min: 0,
            max: 1,
            isArray: false,
            description: "deny | permit.",
            path: "Permission.rule.type"
        }
    },
    serializers: {
        'xml: r5:complexDataTypeXMLSerializer,
        'json: r5:complexDataTypeJsonSerializer
    }
}
public type PermissionRule record {|
    *r5:BackboneElement;

    r5:Extension[] extension?;
    PermissionRuleActivity[] activity?;
    PermissionRuleData[] data?;
    r5:Extension[] modifierExtension?;
    r5:CodeableConcept[] 'limit?;
    string id?;
    PermissionRuleType 'type?;
|};

# PermissionCombining enum
public enum PermissionCombining {
   CODE_COMBINING_DENY_OVERRIDES = "deny-overrides",
   CODE_COMBINING_PERMIT_UNLESS_DENY = "permit-unless-deny",
   CODE_COMBINING_PERMIT_OVERRIDES = "permit-overrides",
   CODE_COMBINING_ORDERED_PERMIT_OVERRIDES = "ordered-permit-overrides",
   CODE_COMBINING_DENY_UNLESS_PERMIT = "deny-unless-permit",
   CODE_COMBINING_ORDERED_DENY_OVERRIDES = "ordered-deny-overrides"
}

# FHIR PermissionRuleData datatype record.
#
# + extension - May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + period - Clinical or Operational Relevant period of time that bounds the data controlled by this rule.
# + security - The data in scope are those with the given codes present in that data .meta.security element.
# + expression - Used when other data selection elements are insufficient.
# + 'resource - Explicit FHIR Resource references.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + id - Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
@r5:DataTypeDefinition {
    name: "PermissionRuleData",
    baseType: (),
    elements: {
        "extension": {
            name: "extension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
            path: "Permission.rule.data.extension"
        },
        "period": {
            name: "period",
            dataType: r5:Period,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "Clinical or Operational Relevant period of time that bounds the data controlled by this rule.",
            path: "Permission.rule.data.period"
        },
        "security": {
            name: "security",
            dataType: r5:Coding,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "The data in scope are those with the given codes present in that data .meta.security element.",
            path: "Permission.rule.data.security"
        },
        "expression": {
            name: "expression",
            dataType: r5:Expression,
            min: 0,
            max: 1,
            isArray: false,
            description: "Used when other data selection elements are insufficient.",
            path: "Permission.rule.data.expression"
        },
        "resource": {
            name: "resource",
            dataType: PermissionRuleDataResource,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "Explicit FHIR Resource references.",
            path: "Permission.rule.data.resource"
        },
        "modifierExtension": {
            name: "modifierExtension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).",
            path: "Permission.rule.data.modifierExtension"
        },
        "id": {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
            path: "Permission.rule.data.id"
        }
    },
    serializers: {
        'xml: r5:complexDataTypeXMLSerializer,
        'json: r5:complexDataTypeJsonSerializer
    }
}
public type PermissionRuleData record {|
    *r5:BackboneElement;

    r5:Extension[] extension?;
    r5:Period[] period?;
    r5:Coding[] security?;
    r5:Expression expression?;
    PermissionRuleDataResource[] 'resource?;
    r5:Extension[] modifierExtension?;
    string id?;
|};

# PermissionRuleDataResourceMeaning enum
public enum PermissionRuleDataResourceMeaning {
   CODE_MEANING_INSTANCE = "instance",
   CODE_MEANING_RELATED = "related",
   CODE_MEANING_DEPENDENTS = "dependents",
   CODE_MEANING_AUTHOREDBY = "authoredby"
}

# FHIR PermissionJustification datatype record.
#
# + extension - May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + evidence - Justifing rational.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + id - Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
# + basis - This would be a codeableconcept, or a coding, which can be constrained to , for example, the 6 grounds for processing in GDPR.
@r5:DataTypeDefinition {
    name: "PermissionJustification",
    baseType: (),
    elements: {
        "extension": {
            name: "extension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
            path: "Permission.justification.extension"
        },
        "evidence": {
            name: "evidence",
            dataType: r5:Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "Justifing rational.",
            path: "Permission.justification.evidence"
        },
        "modifierExtension": {
            name: "modifierExtension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).",
            path: "Permission.justification.modifierExtension"
        },
        "id": {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
            path: "Permission.justification.id"
        },
        "basis": {
            name: "basis",
            dataType: r5:CodeableConcept,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "This would be a codeableconcept, or a coding, which can be constrained to , for example, the 6 grounds for processing in GDPR.",
            path: "Permission.justification.basis"
        }
    },
    serializers: {
        'xml: r5:complexDataTypeXMLSerializer,
        'json: r5:complexDataTypeJsonSerializer
    }
}
public type PermissionJustification record {|
    *r5:BackboneElement;

    r5:Extension[] extension?;
    r5:Reference[] evidence?;
    r5:Extension[] modifierExtension?;
    string id?;
    r5:CodeableConcept[] basis?;
|};

# PermissionStatus enum
public enum PermissionStatus {
   CODE_STATUS_REJECTED = "rejected",
   CODE_STATUS_DRAFT = "draft",
   CODE_STATUS_ACTIVE = "active",
   CODE_STATUS_ENTERED_IN_ERROR = "entered-in-error"
}

