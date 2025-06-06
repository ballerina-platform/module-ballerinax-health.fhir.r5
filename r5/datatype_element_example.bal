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

# Example value (as defined for type).
#
# + id - Unique id for inter-element referencing
# + extension - Additional content defined by implementations
# + label - Describes the purpose of this example  
# + value - Value of Example (one of allowed types)
@DataTypeDefinition {
    name: "ElementExample",
    baseType: Element,
    elements: {
        "label": {
            name: "label",
            dataType: string,
            min: 1,
            max: 1,
            isArray: false,
            description: "Describes the purpose of this example"
        },
        "value": {
            name: "value",
            dataType: Element,
            min: 1,
            max: 1,
            isArray: false,
            description: "Value of Example (one of allowed types)"
        }
    },
    serializers: {
        'xml: complexDataTypeXMLSerializer,
        'json: complexDataTypeJsonSerializer
    }
}
public type ElementExample record {|
    *Element;
    //Inherited child element from "Element" (Redefining to maintain order when serialize) (START)
    string id?;
    Extension[] extension?;
    //Inherited child element from "Element" (Redefining to maintain order when serialize) (END)

    string label;
    Element value;
|};
