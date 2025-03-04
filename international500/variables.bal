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

# Terminology processor instance
public final r5:TerminologyProcessor terminologyProcessor = r5:terminologyProcessor;

# FHIR registry instance
public final r5:FHIRRegistry fhirRegistry = r5:fhirRegistry;

//Number of search params in FHIR_IG_SEARCH_PARAMS_1  = 0
final readonly & map<r5:FHIRSearchParameterDefinition[]> FHIR_IG_SEARCH_PARAMS_1 = {
    
};

public json[] FHIR_VALUE_SETS = [];
public json[] FHIR_CODE_SYSTEMS = [];
