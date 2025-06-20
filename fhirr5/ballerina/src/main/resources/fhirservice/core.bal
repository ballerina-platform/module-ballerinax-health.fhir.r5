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

import ballerinax/health.fhir.r5;

// Constants
const PATIENT_RESOURCE = "Patient";
const PATIENT_ID_QUERY_PARAM = "_id";
const PATIENT_QUERY_PARAM = "patient";
const HISTORY = "_history";
const METADATA = "metadata";
const LOCATION_HEADER = "Location";

// FHIR interaction records
# FHIR Read interaction.
#
# + interaction - Interaction type
# + id - target resource id
public type FHIRReadInteraction record {
    *r5:FHIRInteraction;

    r5:READ interaction = r5:READ;
    string id;
};

# FHIR Search interaction.
#
# + interaction - Interaction type
# + defaultProfile - International resource URL will set as default.
public type FHIRSearchInteraction record {
    *r5:FHIRInteraction;

    r5:SEARCH interaction = r5:SEARCH;
    string defaultProfile?;
};

# FHIR Create interaction.
#
# + interaction - Interaction type
public type FHIRCreateInteraction record {
    *r5:FHIRInteraction;

    r5:CREATE interaction = r5:CREATE;
};

# FHIR Update interaction.
#
# + interaction - Interaction type
# + id - Target resource id
public type FHIRUpdateInteraction record {
    *r5:FHIRInteraction;

    r5:UPDATE interaction = r5:UPDATE;
    string id;
};

# FHIR Instance History interaction.
#
# + interaction - Interaction type
# + id - target resource id
public type FHIRInstanceHistoryInteraction record {
    *r5:FHIRInteraction;

    r5:HISTORY interaction = r5:HISTORY;
    string id;
};

# FHIR VRead interaction.
#
# + interaction - Interaction type  
# + id - target resource id  
# + vid - target version id
public type FHIRVReadInteraction record {
    *r5:FHIRInteraction;

    r5:HISTORY interaction = r5:HISTORY;
    string id;
    string vid;
};

# FHIR History interaction.
#
# + interaction - Interaction type 
public type FHIRHistoryInteraction record {
    *r5:FHIRInteraction;

    r5:HISTORY interaction = r5:HISTORY;
};

# FHIR Patch interaction.
#
# + interaction - Interaction type
# + id - Target resource id
public type FHIRPatchInteraction record {
    *r5:FHIRInteraction;

    r5:PATCH interaction = r5:PATCH;
    string id;
};

# FHIR Delete interaction.
#
# + interaction - Interaction type
# + id - Target resource id
public type FHIRDeleteInteraction record {
    *r5:FHIRInteraction;

    r5:DELETE interaction = r5:DELETE;
    string id;
};

# FHIR Capabilities interaction.
#
# + interaction - Interaction type
public type FHIRCapabilitiesInteraction record {
    *r5:FHIRInteraction;

    r5:CAPABILITIES interaction = r5:CAPABILITIES;
};

