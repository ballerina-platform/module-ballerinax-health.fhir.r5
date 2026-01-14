type Term record {
    string code;
    string system;
    string 'version?;
};

type TerminologyConfig record {|
    boolean isTerminologyValidationEnabled = false;
    string terminologyServiceApi?;
    string tokenUrl?;
    string clientId?;
    string clientSecret?;
|};

enum TerminologyResources {
    CODE_SYSTEM = "CodeSystem",
    VALUE_SET = "ValueSet"
}

enum TerminologyOperation {
    LOOKUP = "lookup",
    VALIDATE_CODE = "validate-code"
}
