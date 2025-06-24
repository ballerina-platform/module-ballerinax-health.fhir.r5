// Copyright (c) 2025 WSO2 Inc. (http://www.wso2.org) All Rights Reserved.
//
// WSO2 Inc. licenses this file to you under the Apache License,
// Version 2.0 (the "License"); you may not use this file except
// in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations
// under the License.
import ballerina/constraint;

@DataTypeDefinition {
    name: "MonetaryComponent",
    baseType: (),
    elements: {

        "amount": {
            name: "amount",
            dataType: Money,
            min: 0,
            max: 1,
            isArray: false,
            description: "Explicit value amount to be used.",
            path: "MonetaryComponent.amount"
        },
        "code": {
            name: "code",
            dataType: CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            description: "Codes may be used to differentiate between kinds of taxes, surcharges, discounts etc.",
            path: "MonetaryComponent.code"
        },
        "factor": {
            name: "factor",
            dataType: decimal,
            min: 0,
            max: 1,
            isArray: false,
            description: "Factor used for calculating this component.",
            path: "MonetaryComponent.factor"
        },
        "'type": {
            name: "'type",
            dataType: MonetaryComponentType,
            min: 1,
            max: 1,
            isArray: false,
            description: "base | surcharge | deduction | discount | tax | informational.",
            path: "MonetaryComponent.type"
        }
    },
    serializers: {
        'xml: complexDataTypeXMLSerializer,
        'json: complexDataTypeJsonSerializer
    }
}
public type MonetaryComponent record {|
    *Element;

    //Inherited child element from "Element" (Redefining to maintain order when serialize) (START)
    string id?;
    Extension[] extension?;
    //Inherited child element from "Element" (Redefining to maintain order when serialize) (END)
    Money amount?;
    CodeableConcept code?;
    decimal factor?;

    @constraint:String {
        pattern: re `^(surcharge|deduction|discount|tax|informational|base)$`
    }
    string|MonetaryComponentType 'type;
|};

public enum MonetaryComponentType {
    CODE_MONETARYCOMPONENTTYPE_SURCHARGE = "surcharge",
    CODE_MONETARYCOMPONENTTYPE_DEDUCTION = "deduction",
    CODE_MONETARYCOMPONENTTYPE_DISCOUNT = "discount",
    CODE_MONETARYCOMPONENTTYPE_TAX = "tax",
    CODE_MONETARYCOMPONENTTYPE_INFORMATIONAL = "informational",
    CODE_MONETARYCOMPONENTTYPE_BASE = "base"
};
