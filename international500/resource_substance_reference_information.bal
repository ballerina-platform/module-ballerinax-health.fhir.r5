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

public const string PROFILE_BASE_SUBSTANCEREFERENCEINFORMATION = "http://hl7.org/fhir/StructureDefinition/SubstanceReferenceInformation";
public const RESOURCE_NAME_SUBSTANCEREFERENCEINFORMATION = "SubstanceReferenceInformation";

# FHIR SubstanceReferenceInformation resource record.
#
# + resourceType - The type of the resource describes
# + geneElement - Todo.
# + contained - These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, nor can they have their own independent transaction scope. This is allowed to be a Parameters resource if and only if it is referenced by a resource that provides context/meaning.
# + extension - May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + gene - Todo.
# + meta - The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + implicitRules - A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.
# + comment - Todo.
# + language - The base language in which the resource is written.
# + id - The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.
# + text - A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it 'clinically safe' for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.
# + target - Todo.
@r5:ResourceDefinition {
    resourceType: "SubstanceReferenceInformation",
    baseType: r5:DomainResource,
    profile: "http://hl7.org/fhir/StructureDefinition/SubstanceReferenceInformation",
    elements: {
        "geneElement" : {
            name: "geneElement",
            dataType: SubstanceReferenceInformationGeneElement,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "SubstanceReferenceInformation.geneElement"
        },
        "contained" : {
            name: "contained",
            dataType: r5:Resource,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "SubstanceReferenceInformation.contained"
        },
        "extension" : {
            name: "extension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "SubstanceReferenceInformation.extension"
        },
        "gene" : {
            name: "gene",
            dataType: SubstanceReferenceInformationGene,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "SubstanceReferenceInformation.gene"
        },
        "meta" : {
            name: "meta",
            dataType: r5:Meta,
            min: 0,
            max: 1,
            isArray: false,
            path: "SubstanceReferenceInformation.meta"
        },
        "modifierExtension" : {
            name: "modifierExtension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "SubstanceReferenceInformation.modifierExtension"
        },
        "implicitRules" : {
            name: "implicitRules",
            dataType: r5:uri,
            min: 0,
            max: 1,
            isArray: false,
            path: "SubstanceReferenceInformation.implicitRules"
        },
        "comment" : {
            name: "comment",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "SubstanceReferenceInformation.comment"
        },
        "language" : {
            name: "language",
            dataType: r5:code,
            min: 0,
            max: 1,
            isArray: false,
            path: "SubstanceReferenceInformation.language",
            valueSet: "http://hl7.org/fhir/ValueSet/all-languages|5.0.0"
        },
        "id" : {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "SubstanceReferenceInformation.id"
        },
        "text" : {
            name: "text",
            dataType: r5:Narrative,
            min: 0,
            max: 1,
            isArray: false,
            path: "SubstanceReferenceInformation.text"
        },
        "target" : {
            name: "target",
            dataType: SubstanceReferenceInformationTarget,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "SubstanceReferenceInformation.target"
        }
    },
    serializers: {
        'xml: r5:fhirResourceXMLSerializer,
        'json: r5:fhirResourceJsonSerializer
    }
}
public type SubstanceReferenceInformation record {|
    *r5:DomainResource;

    RESOURCE_NAME_SUBSTANCEREFERENCEINFORMATION resourceType = RESOURCE_NAME_SUBSTANCEREFERENCEINFORMATION;

    SubstanceReferenceInformationGeneElement[] geneElement?;
    r5:Resource[] contained?;
    r5:Extension[] extension?;
    SubstanceReferenceInformationGene[] gene?;
    r5:Meta meta?;
    r5:Extension[] modifierExtension?;
    r5:uri implicitRules?;
    string comment?;
    r5:code language?;
    string id?;
    r5:Narrative text?;
    SubstanceReferenceInformationTarget[] target?;
    r5:Element ...;
|};

# FHIR SubstanceReferenceInformationGene datatype record.
#
# + extension - May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + gene - Todo.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + id - Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
# + 'source - Todo.
# + geneSequenceOrigin - Todo.
@r5:DataTypeDefinition {
    name: "SubstanceReferenceInformationGene",
    baseType: (),
    elements: {
        "extension": {
            name: "extension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
            path: "SubstanceReferenceInformation.gene.extension"
        },
        "gene": {
            name: "gene",
            dataType: r5:CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            description: "Todo.",
            path: "SubstanceReferenceInformation.gene.gene"
        },
        "modifierExtension": {
            name: "modifierExtension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).",
            path: "SubstanceReferenceInformation.gene.modifierExtension"
        },
        "id": {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
            path: "SubstanceReferenceInformation.gene.id"
        },
        "source": {
            name: "source",
            dataType: r5:Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "Todo.",
            path: "SubstanceReferenceInformation.gene.source"
        },
        "geneSequenceOrigin": {
            name: "geneSequenceOrigin",
            dataType: r5:CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            description: "Todo.",
            path: "SubstanceReferenceInformation.gene.geneSequenceOrigin"
        }
    },
    serializers: {
        'xml: r5:complexDataTypeXMLSerializer,
        'json: r5:complexDataTypeJsonSerializer
    }
}
public type SubstanceReferenceInformationGene record {|
    *r5:BackboneElement;

    r5:Extension[] extension?;
    r5:CodeableConcept gene?;
    r5:Extension[] modifierExtension?;
    string id?;
    r5:Reference[] 'source?;
    r5:CodeableConcept geneSequenceOrigin?;
|};

# FHIR SubstanceReferenceInformationGeneElement datatype record.
#
# + extension - May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + id - Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
# + 'source - Todo.
# + 'type - Todo.
# + element - Todo.
@r5:DataTypeDefinition {
    name: "SubstanceReferenceInformationGeneElement",
    baseType: (),
    elements: {
        "extension": {
            name: "extension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
            path: "SubstanceReferenceInformation.geneElement.extension"
        },
        "modifierExtension": {
            name: "modifierExtension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).",
            path: "SubstanceReferenceInformation.geneElement.modifierExtension"
        },
        "id": {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
            path: "SubstanceReferenceInformation.geneElement.id"
        },
        "source": {
            name: "source",
            dataType: r5:Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "Todo.",
            path: "SubstanceReferenceInformation.geneElement.source"
        },
        "type": {
            name: "type",
            dataType: r5:CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            description: "Todo.",
            path: "SubstanceReferenceInformation.geneElement.type"
        },
        "element": {
            name: "element",
            dataType: r5:Identifier,
            min: 0,
            max: 1,
            isArray: false,
            description: "Todo.",
            path: "SubstanceReferenceInformation.geneElement.element"
        }
    },
    serializers: {
        'xml: r5:complexDataTypeXMLSerializer,
        'json: r5:complexDataTypeJsonSerializer
    }
}
public type SubstanceReferenceInformationGeneElement record {|
    *r5:BackboneElement;

    r5:Extension[] extension?;
    r5:Extension[] modifierExtension?;
    string id?;
    r5:Reference[] 'source?;
    r5:CodeableConcept 'type?;
    r5:Identifier element?;
|};

# FHIR SubstanceReferenceInformationTarget datatype record.
#
# + amountType - Todo.
# + organismType - Todo.
# + extension - May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + organism - Todo.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + 'source - Todo.
# + 'type - Todo.
# + target - Todo.
# + amountQuantity - Todo.
# + amountString - Todo.
# + amountRange - Todo.
# + interaction - Todo.
# + id - Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
@r5:DataTypeDefinition {
    name: "SubstanceReferenceInformationTarget",
    baseType: (),
    elements: {
        "amountType": {
            name: "amountType",
            dataType: r5:CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            description: "Todo.",
            path: "SubstanceReferenceInformation.target.amountType"
        },
        "organismType": {
            name: "organismType",
            dataType: r5:CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            description: "Todo.",
            path: "SubstanceReferenceInformation.target.organismType"
        },
        "extension": {
            name: "extension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
            path: "SubstanceReferenceInformation.target.extension"
        },
        "organism": {
            name: "organism",
            dataType: r5:CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            description: "Todo.",
            path: "SubstanceReferenceInformation.target.organism"
        },
        "modifierExtension": {
            name: "modifierExtension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).",
            path: "SubstanceReferenceInformation.target.modifierExtension"
        },
        "source": {
            name: "source",
            dataType: r5:Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "Todo.",
            path: "SubstanceReferenceInformation.target.source"
        },
        "type": {
            name: "type",
            dataType: r5:CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            description: "Todo.",
            path: "SubstanceReferenceInformation.target.type"
        },
        "target": {
            name: "target",
            dataType: r5:Identifier,
            min: 0,
            max: 1,
            isArray: false,
            description: "Todo.",
            path: "SubstanceReferenceInformation.target.target"
        },
        "amountQuantity": {
            name: "amountQuantity",
            dataType: r5:Quantity,
            min: 0,
            max: 1,
            isArray: false,
            description: "Todo.",
            path: "SubstanceReferenceInformation.target.amount[x]"
        },
        "amountString": {
            name: "amountString",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Todo.",
            path: "SubstanceReferenceInformation.target.amount[x]"
        },
        "amountRange": {
            name: "amountRange",
            dataType: r5:Range,
            min: 0,
            max: 1,
            isArray: false,
            description: "Todo.",
            path: "SubstanceReferenceInformation.target.amount[x]"
        },
        "interaction": {
            name: "interaction",
            dataType: r5:CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            description: "Todo.",
            path: "SubstanceReferenceInformation.target.interaction"
        },
        "id": {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
            path: "SubstanceReferenceInformation.target.id"
        }
    },
    serializers: {
        'xml: r5:complexDataTypeXMLSerializer,
        'json: r5:complexDataTypeJsonSerializer
    }
}
public type SubstanceReferenceInformationTarget record {|
    *r5:BackboneElement;

    r5:CodeableConcept amountType?;
    r5:CodeableConcept organismType?;
    r5:Extension[] extension?;
    r5:CodeableConcept organism?;
    r5:Extension[] modifierExtension?;
    r5:Reference[] 'source?;
    r5:CodeableConcept 'type?;
    r5:Identifier target?;
    r5:Quantity amountQuantity?;
    string amountString?;
    r5:Range amountRange?;
    r5:CodeableConcept interaction?;
    string id?;
|};

