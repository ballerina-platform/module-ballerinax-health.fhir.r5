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

import ballerina/constraint;

# A signed integer in the range −2,147,483,648..2,147,483,647 (32-bit; for larger values, use decimal)
# * Regex: `[0]|[-+]?[1-9][0-9]*`
public type integer int;

# A Uniform Resource Identifier Reference (RFC 3986 ). Note: URIs are case sensitive. For UUID 
# (urn:uuid:53fefa32-fcbb-4ff8-8a92-55ee120877b7) use all lowercase
# * Regex: `\S*` (This regex is very permissive, but URIs must be valid. Implementers are welcome to use more
# specific regex statements for a URI in specific contexts)
@constraint:String {
    pattern: {
        value: re `\S*`,
        message: "A Uniform Resource Identifier should align with the Reference (RFC 3986 ). Note: URIs are case sensitive. For UUID (urn:uuid:53fefa32-fcbb-4ff8-8a92-55ee120877b7), use all lowercase. Refer: https://hl7.org/fhir/R5/datatypes.html"
    }
}
public type uri string;

# A URI that refers to a resource by its canonical URL (resources with a url property). The canonical type differs from 
# a uri in that it has special meaning in this specification, and in that it may have a version appended, separated by 
# a vertical bar (|). Note that the type canonical is not used for the actual canonical URLs that are the target of 
# these references, but for the URIs that refer to them, and may have the version suffix in them. Like other URIs, 
# elements of type canonical may also have #fragment references
public type canonical string;

# A stream of bytes, base64 encoded (RFC 4648 )
# * Regex: `(\s*([0-9a-zA-Z\+\=]){4}\s*)+`
@constraint:String {
    pattern: {
        value: re `(\s*([0-9a-zA-Z\+=]){4}\s*)+`,
        message: "A base64Binary should be a stream of bytes, base64 encoded (RFC 4648). Refer: https://hl7.org/fhir/R5/datatypes.html"
    }
}
public type base64Binary string;

# An instant in time in the format YYYY-MM-DDThh:mm:ss.sss+zz:zz (e.g. 2015-02-07T13:28:17.239+02:00
# or 2017-01-01T00:00:00Z). The time SHALL specified at least to the second and SHALL include a time zone.
# Note: This is intended for when precisely observed times are required (typically system logs etc.), and not
# human-reported times - for those, use date or dateTime (which can be as precise as instant, but is not required
# to be). instant is a more constrained dateTime.
# * Regex: `([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))`
@constraint:String {
    pattern: {
        value: re `([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))`,
        message: "An instant in time should be in the format YYYY-MM-DDThh:mm:ss.sss+zz:zz (e.g. 2015-02-07T13:28:17.239+02:00 or 2017-01-01T00:00:00Z). Refer: https://hl7.org/fhir/R5/datatypes.html"
    }

}
public type instant string;

# A date, or partial date (e.g. just year or year + month) as used in human communication.
# The format is YYYY, YYYY-MM, or YYYY-MM-DD, e.g. 2018, 1973-06, or 1905-08-23. There SHALL be no time zone.
# Dates SHALL be valid dates
# * Regex: `([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?`
@constraint:String {
    pattern: {
        value: re `([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?`,
        message: "It should be a date, or partial date (e.g. just year or year + month) as used in human communication. The format is YYYY, YYYY-MM, or YYYY-MM-DD, e.g. 2018, 1973-06, or 1905-08-23. There SHALL be no time zone. Refer: https://hl7.org/fhir/R5/datatypes.html"
    }
}
public type date string;

# A date, date-time or partial date (e.g. just year or year + month) as used in human communication. The format
# is YYYY, YYYY-MM, YYYY-MM-DD or YYYY-MM-DDThh:mm:ss+zz:zz, e.g. 2018, 1973-06, 1905-08-23, 2015-02-07T13:28:17-05:00
# or 2017-01-01T00:00:00.000Z. If hours and minutes are specified, a time zone SHALL be populated.
# Seconds must be provided due to schema type constraints but may be zero-filled and may be ignored at receiver
# discretion. Dates SHALL be valid dates. The time "24:00" is not allowed. Leap Seconds are allowed.
# * Regex: `([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?`
@constraint:String {
    pattern: {
        value: re `([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?`,
        message: "It should be a date, date-time or partial date (e.g. just year or year + month) as used in human communication. The format is YYYY, YYYY-MM, YYYY-MM-DD or YYYY-MM-DDThh:mm:ss+zz:zz, e.g. 2018, 1973-06, 1905-08-23, 2015-02-07T13:28:17-05:00 or 2017-01-01T00:00:00.000Z. Refer: https://hl7.org/fhir/R5/datatypes.html"
    }
}
public type dateTime string;

# A time during the day, in the format hh:mm:ss. There is no date specified. 
# Seconds must be provided due to schema type constraints but may be zero-filled and may be ignored at receiver discretion. 
# The time "24:00" SHALL NOT be used. A time zone SHALL NOT be present. 
# Times can be converted to a Duration since midnight.	
# * Regex: `([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?`
@constraint:String {
    pattern: {
        value: re `([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]+)?`,
        message: "It should be a time during the day, in the format hh:mm:ss. There is no date specified. Refer: https://hl7.org/fhir/R5/datatypes.html"
    }
}
public type time string;

# Indicates that the value is taken from a set of controlled strings defined elsewhere (see Using codes for further discussion).
# Technically, a code is restricted to a string which has at least one character and no leading or trailing
# whitespace, and where there is no whitespace other than single spaces in the contents
# * Regex: `[^\s]+(\s[^\s]+)*`
@constraint:String {
    pattern: {
        value: re `[^\s]+(\s[^\s]+)*`,
        message: "A code should be a string with at least one character and no leading or trailing whitespace, and there is no whitespace other than single spaces in the contents. Refer: https://hl7.org/fhir/R5/datatypes.html"
    }
}
public type code string;

# An OID represented as a URI (RFC 3001 ); e.g. urn:oid:1.2.3.4.5
# * Regex: `urn:oid:[0-2](\.(0|[1-9][0-9]*))+`
@constraint:String {
    pattern: {
        value: re `urn:oid:[0-2](\.(0|[1-9][0-9]*))+`,
        message: "An OID should align with the URI specified in (RFC 3001 ); e.g. urn:oid:1.2.3.4.5; Refer: https://hl7.org/fhir/R5/datatypes.html"
    }
}
public type oid string;

# Any combination of upper- or lower-case ASCII letters ('A'..'Z', and 'a'..'z', numerals ('0'..'9'), '-' and '.',
# with a length limit of 64 characters. (This might be an integer, an un-prefixed OID, UUID or any other identifier
# pattern that meets these constraints.)
# * Regex: `[A-Za-z0-9\-\.]{1,64}`
@constraint:String {
    pattern: {
        value: re `[A-Za-z0-9\-\.]{1,64}`,
        message: "An id should be in any combination of upper-case or lower-case ASCII letters ('A'..'Z', and 'a'..'z', numerals ('0'..'9'), '-' and '.', with a length limit of 64 characters. Refer: https://hl7.org/fhir/R5/datatypes.html"
    }
}
public type id string;

# A FHIR string that may contain markdown syntax for optional processing by a markdown presentation engine, in the GFM extension of CommonMark format

@constraint:String {
    pattern: {
        value: re `\s*(\S|\s)*`,
        message: "A markdown should be an FHIR string that may contain markdown syntax for optional processing by a markdown presentation engine in the GFM extension of CommonMark format. Refer: https://hl7.org/fhir/R5/datatypes.html"
    }
}
public type markdown string;

# Any positive integer in the range 1..2,147,483,647
# * Regex:`+?[1-9][0-9]*`
@constraint:Int {
    minValue: {
        value: 1,
        message: "It should be any positive integer. Refer: https://hl7.org/fhir/R5/datatypes.html"
    }
}
public type positiveInt int;

# Any non-negative integer in the range 0..2,147,483,647 
# * Regex: `[0]|([1-9][0-9]*)`
@constraint:Int {
    minValue: {
        value: 0,
        message: "It should be any non-negative integer. Refer: https://hl7.org/fhir/R5/datatypes.html"
    }
}
public type unsignedInt int;

# A UUID (aka GUID) represented as a URI; e.g. urn:uuid:c757873d-ec9a-4326-a141-556f43239520
public type uuid string;

# Description
public type xhtml string;

# Description
public type urlType string;

# A signed integer in the range -9,223,372,036,854,775,808 to +9,223,372,036,854,775,807 (64-bit).
# * Regex: `[0]|[-+]?[1-9][0-9]*`
public type integer64 int;
