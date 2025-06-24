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

@DataTypeDefinition {
    name: "VirtualServiceDetail",
    baseType: (),
    elements: {

        "sessionKey": {
            name: "sessionKey",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Session Key required by the virtual service.",
            path: "VirtualServiceDetail.sessionKey"
        },
        "addressUrl": {
            name: "addressUrl",
            dataType: urlType,
            min: 0,
            max: 1,
            isArray: false,
            description: "What address or number needs to be used for a user to connect to the virtual service to join. The channelType informs as to which datatype is appropriate to use (requires knowledge of the specific type).",
            path: "VirtualServiceDetail.address[x]"
        },
        "additionalInfo": {
            name: "additionalInfo",
            dataType: urlType,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "Address to see alternative connection details.",
            path: "VirtualServiceDetail.additionalInfo"
        },
        "channelType": {
            name: "channelType",
            dataType: Coding,
            min: 0,
            max: 1,
            isArray: false,
            description: "The type of virtual service to connect to (i.e. Teams, Zoom, Specific VMR technology, WhatsApp).",
            path: "VirtualServiceDetail.channelType"
        },
        "maxParticipants": {
            name: "maxParticipants",
            dataType: positiveInt,
            min: 0,
            max: 1,
            isArray: false,
            description: "Maximum number of participants supported by the virtual service.",
            path: "VirtualServiceDetail.maxParticipants"
        }
    },
    serializers: {
        'xml: complexDataTypeXMLSerializer,
        'json: complexDataTypeJsonSerializer
    }
}
public type VirtualServiceDetail record {|
    *Element;

    //Inherited child element from "Element" (Redefining to maintain order when serialize) (START)
    string id?;
    Extension[] extension?;
    //Inherited child element from "Element" (Redefining to maintain order when serialize) (END)
    string sessionKey?;
    urlType addressUrl?;
    urlType[] additionalInfo?;
    Coding channelType?;
    positiveInt maxParticipants?;
|};

