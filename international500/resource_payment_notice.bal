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

public const string PROFILE_BASE_PAYMENTNOTICE = "http://hl7.org/fhir/StructureDefinition/PaymentNotice";
public const RESOURCE_NAME_PAYMENTNOTICE = "PaymentNotice";

# FHIR PaymentNotice resource record.
#
# + resourceType - The type of the resource describes
# + identifier - A unique identifier assigned to this payment notice.
# + request - Reference of resource for which payment is being made.
# + amount - The amount sent to the payee.
# + extension - May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + created - The date when this resource was created.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + language - The base language in which the resource is written.
# + reporter - The party who reports the payment notice.
# + payee - The party who will receive or has received payment that is the subject of this notification.
# + contained - These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, nor can they have their own independent transaction scope. This is allowed to be a Parameters resource if and only if it is referenced by a resource that provides context/meaning.
# + meta - The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.
# + response - Reference of response to resource for which payment is being made.
# + recipient - The party who is notified of the payment status.
# + implicitRules - A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.
# + payment - A reference to the payment which is the subject of this notice.
# + id - The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.
# + text - A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it 'clinically safe' for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.
# + paymentDate - The date when the above payment action occurred.
# + paymentStatus - A code indicating whether payment has been sent or cleared.
# + status - The status of the resource instance.
@r5:ResourceDefinition {
    resourceType: "PaymentNotice",
    baseType: r5:DomainResource,
    profile: "http://hl7.org/fhir/StructureDefinition/PaymentNotice",
    elements: {
        "identifier" : {
            name: "identifier",
            dataType: r5:Identifier,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "PaymentNotice.identifier"
        },
        "request" : {
            name: "request",
            dataType: r5:Reference,
            min: 0,
            max: 1,
            isArray: false,
            path: "PaymentNotice.request"
        },
        "amount" : {
            name: "amount",
            dataType: r5:Money,
            min: 1,
            max: 1,
            isArray: false,
            path: "PaymentNotice.amount"
        },
        "extension" : {
            name: "extension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "PaymentNotice.extension"
        },
        "created" : {
            name: "created",
            dataType: r5:dateTime,
            min: 1,
            max: 1,
            isArray: false,
            path: "PaymentNotice.created"
        },
        "modifierExtension" : {
            name: "modifierExtension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "PaymentNotice.modifierExtension"
        },
        "language" : {
            name: "language",
            dataType: r5:code,
            min: 0,
            max: 1,
            isArray: false,
            path: "PaymentNotice.language",
            valueSet: "http://hl7.org/fhir/ValueSet/all-languages|5.0.0"
        },
        "reporter" : {
            name: "reporter",
            dataType: r5:Reference,
            min: 0,
            max: 1,
            isArray: false,
            path: "PaymentNotice.reporter"
        },
        "payee" : {
            name: "payee",
            dataType: r5:Reference,
            min: 0,
            max: 1,
            isArray: false,
            path: "PaymentNotice.payee"
        },
        "contained" : {
            name: "contained",
            dataType: r5:Resource,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "PaymentNotice.contained"
        },
        "meta" : {
            name: "meta",
            dataType: r5:Meta,
            min: 0,
            max: 1,
            isArray: false,
            path: "PaymentNotice.meta"
        },
        "response" : {
            name: "response",
            dataType: r5:Reference,
            min: 0,
            max: 1,
            isArray: false,
            path: "PaymentNotice.response"
        },
        "recipient" : {
            name: "recipient",
            dataType: r5:Reference,
            min: 1,
            max: 1,
            isArray: false,
            path: "PaymentNotice.recipient"
        },
        "implicitRules" : {
            name: "implicitRules",
            dataType: r5:uri,
            min: 0,
            max: 1,
            isArray: false,
            path: "PaymentNotice.implicitRules"
        },
        "payment" : {
            name: "payment",
            dataType: r5:Reference,
            min: 0,
            max: 1,
            isArray: false,
            path: "PaymentNotice.payment"
        },
        "id" : {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "PaymentNotice.id"
        },
        "text" : {
            name: "text",
            dataType: r5:Narrative,
            min: 0,
            max: 1,
            isArray: false,
            path: "PaymentNotice.text"
        },
        "paymentDate" : {
            name: "paymentDate",
            dataType: r5:date,
            min: 0,
            max: 1,
            isArray: false,
            path: "PaymentNotice.paymentDate"
        },
        "paymentStatus" : {
            name: "paymentStatus",
            dataType: r5:CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            path: "PaymentNotice.paymentStatus",
            valueSet: "http://hl7.org/fhir/ValueSet/payment-status"
        },
        "status" : {
            name: "status",
            dataType: PaymentNoticeStatus,
            min: 1,
            max: 1,
            isArray: false,
            path: "PaymentNotice.status",
            valueSet: "http://hl7.org/fhir/ValueSet/fm-status|5.0.0"
        }
    },
    serializers: {
        'xml: r5:fhirResourceXMLSerializer,
        'json: r5:fhirResourceJsonSerializer
    }
}
public type PaymentNotice record {|
    *r5:DomainResource;

    RESOURCE_NAME_PAYMENTNOTICE resourceType = RESOURCE_NAME_PAYMENTNOTICE;

    r5:Identifier[] identifier?;
    r5:Reference request?;
    r5:Money amount;
    r5:Extension[] extension?;
    r5:dateTime created;
    r5:Extension[] modifierExtension?;
    r5:code language?;
    r5:Reference reporter?;
    r5:Reference payee?;
    r5:Resource[] contained?;
    r5:Meta meta?;
    r5:Reference response?;
    r5:Reference recipient;
    r5:uri implicitRules?;
    r5:Reference payment?;
    string id?;
    r5:Narrative text?;
    r5:date paymentDate?;
    r5:CodeableConcept paymentStatus?;
    PaymentNoticeStatus status;
    r5:Element ...;
|};

# PaymentNoticeStatus enum
public enum PaymentNoticeStatus {
   CODE_STATUS_DRAFT = "draft",
   CODE_STATUS_ACTIVE = "active",
   CODE_STATUS_CANCELLED = "cancelled",
   CODE_STATUS_ENTERED_IN_ERROR = "entered-in-error"
}

