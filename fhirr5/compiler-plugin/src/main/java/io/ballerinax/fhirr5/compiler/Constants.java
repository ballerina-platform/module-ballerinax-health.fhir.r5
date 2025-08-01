/*
 * Copyright (c) 2025, WSO2 LLC. (http://www.wso2.org).
 *
 * WSO2 LLC. licenses this file to you under the Apache License,
 * Version 2.0 (the "License"); you may not use this file except
 * in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied. See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */

package io.ballerinax.fhirr5.compiler;

/**
 * Constants related to compiler plugin implementation.
 */
public class Constants {

    public static final String REMOTE_KEYWORD = "remote";
    public static final String ALLOWED_RETURN_UNION = "anydata|http:Response|http:StatusCodeResponse|error";
    public static final String SERVICE = "Service";
    public static final String FHIR_CONTEXT = "FHIRContext";
    public static final String HEALTHCARE_PKG = "health.fhir.r5";
    public static final String FHIR_R5 = "health.fhirr5";
    public static final String BALLERINAX = "ballerinax";
    public static final String HTTP_RESPONSE = "Response";
    public static final String HTTP_MODULE = "http";
}
