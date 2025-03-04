Ballerina package containing FHIR resource data models
compliant with http://hl7.org/fhir/ implementation guide.

# FHIR R5 health_fhir_r5_international500 package

## Package Overview

|                      |                      |
|----------------------|----------------------|
| FHIR version         | R5                   |
| Implementation Guide | http://hl7.org/fhir/               |


**Note:**
**This package only supports FHIR JSON payload format only. FHIR XML payload support will be added soon.**

## Capabilities and features

### Supported FHIR resource types

|                  |                                             |
|------------------|---------------------------------------------|
| 1). Appointment | [[Definition]][s1] [[Ballerina Record]][m1] |
| 2). RequestOrchestration | [[Definition]][s2] [[Ballerina Record]][m2] |
| 3). MessageDefinition | [[Definition]][s3] [[Ballerina Record]][m3] |
| 4). Endpoint | [[Definition]][s4] [[Ballerina Record]][m4] |
| 5). Consent | [[Definition]][s5] [[Ballerina Record]][m5] |
| 6). ArtifactAssessment | [[Definition]][s6] [[Ballerina Record]][m6] |
| 7). Measure | [[Definition]][s7] [[Ballerina Record]][m7] |
| 8). Permission | [[Definition]][s8] [[Ballerina Record]][m8] |
| 9). ActorDefinition | [[Definition]][s9] [[Ballerina Record]][m9] |
| 10). ConditionDefinition | [[Definition]][s10] [[Ballerina Record]][m10] |
| 11). DocumentReference | [[Definition]][s11] [[Ballerina Record]][m11] |
| 12). GraphDefinition | [[Definition]][s12] [[Ballerina Record]][m12] |
| 13). Parameters | [[Definition]][s13] [[Ballerina Record]][m13] |
| 14). PublishableNamingSystem | [[Definition]][s14] [[Ballerina Record]][m14] |
| 15). MeasureReport | [[Definition]][s15] [[Ballerina Record]][m15] |
| 16). PractitionerRole | [[Definition]][s16] [[Ballerina Record]][m16] |
| 17). CDSHooksGuidanceResponse | [[Definition]][s17] [[Ballerina Record]][m17] |
| 18). DeviceUsage | [[Definition]][s18] [[Ballerina Record]][m18] |
| 19). PackagedProductDefinition | [[Definition]][s19] [[Ballerina Record]][m19] |
| 20). ServiceRequest | [[Definition]][s20] [[Ballerina Record]][m20] |
| 21). BodyStructure | [[Definition]][s21] [[Ballerina Record]][m21] |
| 22). Slot | [[Definition]][s22] [[Ballerina Record]][m22] |
| 23). PublishableActivityDefinition | [[Definition]][s23] [[Ballerina Record]][m23] |
| 24). SubscriptionTopic | [[Definition]][s24] [[Ballerina Record]][m24] |
| 25). PaymentNotice | [[Definition]][s25] [[Ballerina Record]][m25] |
| 26). Group | [[Definition]][s26] [[Ballerina Record]][m26] |
| 27). ImplementationGuide | [[Definition]][s27] [[Ballerina Record]][m27] |
| 28). CareTeam | [[Definition]][s28] [[Ballerina Record]][m28] |
| 29). ImagingStudy | [[Definition]][s29] [[Ballerina Record]][m29] |
| 30). ClinicalUseDefinition | [[Definition]][s30] [[Ballerina Record]][m30] |
| 31). FamilyMemberHistory | [[Definition]][s31] [[Ballerina Record]][m31] |
| 32). Observationheartrate | [[Definition]][s32] [[Ballerina Record]][m32] |
| 33). ObservationDefinition | [[Definition]][s33] [[Ballerina Record]][m33] |
| 34). Substance | [[Definition]][s34] [[Ballerina Record]][m34] |
| 35). Communication | [[Definition]][s35] [[Ballerina Record]][m35] |
| 36). ShareableLibrary | [[Definition]][s36] [[Ballerina Record]][m36] |
| 37). ShareableConceptMap | [[Definition]][s37] [[Ballerina Record]][m37] |
| 38). DocumentStructure | [[Definition]][s38] [[Ballerina Record]][m38] |
| 39). ImmunizationEvaluation | [[Definition]][s39] [[Ballerina Record]][m39] |
| 40). EBMRecommendation | [[Definition]][s40] [[Ballerina Record]][m40] |
| 41). Observationbodytemp | [[Definition]][s41] [[Ballerina Record]][m41] |
| 42). ActualGroup | [[Definition]][s42] [[Ballerina Record]][m42] |
| 43). MessageHeader | [[Definition]][s43] [[Ballerina Record]][m43] |
| 44). ManufacturedItemDefinition | [[Definition]][s44] [[Ballerina Record]][m44] |
| 45). Provenance | [[Definition]][s45] [[Ballerina Record]][m45] |
| 46). Questionnaire | [[Definition]][s46] [[Ballerina Record]][m46] |
| 47). PublishableLibrary | [[Definition]][s47] [[Ballerina Record]][m47] |
| 48). Observationbodyweight | [[Definition]][s48] [[Ballerina Record]][m48] |
| 49). ExplanationOfBenefit | [[Definition]][s49] [[Ballerina Record]][m49] |
| 50). ResearchStudy | [[Definition]][s50] [[Ballerina Record]][m50] |
| 51). DeviceAssociation | [[Definition]][s51] [[Ballerina Record]][m51] |
| 52). StructureDefinition | [[Definition]][s52] [[Ballerina Record]][m52] |
| 53). Observationvitalspanel | [[Definition]][s53] [[Ballerina Record]][m53] |
| 54). CarePlan | [[Definition]][s54] [[Ballerina Record]][m54] |
| 55). Procedure | [[Definition]][s55] [[Ballerina Record]][m55] |
| 56). List | [[Definition]][s56] [[Ballerina Record]][m56] |
| 57). ConceptMap | [[Definition]][s57] [[Ballerina Record]][m57] |
| 58). ELMLibrary | [[Definition]][s58] [[Ballerina Record]][m58] |
| 59). Immunization | [[Definition]][s59] [[Ballerina Record]][m59] |
| 60). BiologicallyDerivedProduct | [[Definition]][s60] [[Ballerina Record]][m60] |
| 61). VisionPrescription | [[Definition]][s61] [[Ballerina Record]][m61] |
| 62). EvidenceVariable | [[Definition]][s62] [[Ballerina Record]][m62] |
| 63). ImagingSelection | [[Definition]][s63] [[Ballerina Record]][m63] |
| 64). DeviceMetric | [[Definition]][s64] [[Ballerina Record]][m64] |
| 65). ProfileForCatalog | [[Definition]][s65] [[Ballerina Record]][m65] |
| 66). CDSHooksServicePlanDefinition | [[Definition]][s66] [[Ballerina Record]][m66] |
| 67). AdverseEvent | [[Definition]][s67] [[Ballerina Record]][m67] |
| 68). MedicinalProductDefinition | [[Definition]][s68] [[Ballerina Record]][m68] |
| 69). GuidanceResponse | [[Definition]][s69] [[Ballerina Record]][m69] |
| 70). Observation | [[Definition]][s70] [[Ballerina Record]][m70] |
| 71). MedicationAdministration | [[Definition]][s71] [[Ballerina Record]][m71] |
| 72). EnrollmentResponse | [[Definition]][s72] [[Ballerina Record]][m72] |
| 73). Binary | [[Definition]][s73] [[Ballerina Record]][m73] |
| 74). ShareablePlanDefinition | [[Definition]][s74] [[Ballerina Record]][m74] |
| 75). TestScript | [[Definition]][s75] [[Ballerina Record]][m75] |
| 76). GenomicStudy | [[Definition]][s76] [[Ballerina Record]][m76] |
| 77). InventoryItem | [[Definition]][s77] [[Ballerina Record]][m77] |
| 78). SubstancePolymer | [[Definition]][s78] [[Ballerina Record]][m78] |
| 79). ClaimResponse | [[Definition]][s79] [[Ballerina Record]][m79] |
| 80). MedicationDispense | [[Definition]][s80] [[Ballerina Record]][m80] |
| 81). ExampleLipidProfile | [[Definition]][s81] [[Ballerina Record]][m81] |
| 82). OrganizationAffiliation | [[Definition]][s82] [[Ballerina Record]][m82] |
| 83). DiagnosticReport | [[Definition]][s83] [[Ballerina Record]][m83] |
| 84). Observationbp | [[Definition]][s84] [[Ballerina Record]][m84] |
| 85). NutritionOrder | [[Definition]][s85] [[Ballerina Record]][m85] |
| 86). TerminologyCapabilities | [[Definition]][s86] [[Ballerina Record]][m86] |
| 87). Evidence | [[Definition]][s87] [[Ballerina Record]][m87] |
| 88). Citation | [[Definition]][s88] [[Ballerina Record]][m88] |
| 89). Condition | [[Definition]][s89] [[Ballerina Record]][m89] |
| 90). Composition | [[Definition]][s90] [[Ballerina Record]][m90] |
| 91). Observationoxygensat | [[Definition]][s91] [[Ballerina Record]][m91] |
| 92). DeviceMetricObservationProfile | [[Definition]][s92] [[Ballerina Record]][m92] |
| 93). Patient | [[Definition]][s93] [[Ballerina Record]][m93] |
| 94). Coverage | [[Definition]][s94] [[Ballerina Record]][m94] |
| 95). QuestionnaireResponse | [[Definition]][s95] [[Ballerina Record]][m95] |
| 96). Observationbmi | [[Definition]][s96] [[Ballerina Record]][m96] |
| 97). NamingSystem | [[Definition]][s97] [[Ballerina Record]][m97] |
| 98). ExampleScenario | [[Definition]][s98] [[Ballerina Record]][m98] |
| 99). SupplyDelivery | [[Definition]][s99] [[Ballerina Record]][m99] |
| 100). Schedule | [[Definition]][s100] [[Ballerina Record]][m100] |
| 101). DeviceDefinition | [[Definition]][s101] [[Ballerina Record]][m101] |
| 102). PlanDefinition | [[Definition]][s102] [[Ballerina Record]][m102] |
| 103). Location | [[Definition]][s103] [[Ballerina Record]][m103] |
| 104). AdministrableProductDefinition | [[Definition]][s104] [[Ballerina Record]][m104] |
| 105). Account | [[Definition]][s105] [[Ballerina Record]][m105] |
| 106). ShareableMeasure | [[Definition]][s106] [[Ballerina Record]][m106] |
| 107). Invoice | [[Definition]][s107] [[Ballerina Record]][m107] |
| 108). Observationheadcircum | [[Definition]][s108] [[Ballerina Record]][m108] |
| 109). EventDefinition | [[Definition]][s109] [[Ballerina Record]][m109] |
| 110). FormularyItem | [[Definition]][s110] [[Ballerina Record]][m110] |
| 111). Goal | [[Definition]][s111] [[Ballerina Record]][m111] |
| 112). DocumentSectionLibrary | [[Definition]][s112] [[Ballerina Record]][m112] |
| 113). EnrollmentRequest | [[Definition]][s113] [[Ballerina Record]][m113] |
| 114). PublishableMeasure | [[Definition]][s114] [[Ballerina Record]][m114] |
| 115). GroupDefinition | [[Definition]][s115] [[Ballerina Record]][m115] |
| 116). Medication | [[Definition]][s116] [[Ballerina Record]][m116] |
| 117). Observationvitalsigns | [[Definition]][s117] [[Ballerina Record]][m117] |
| 118). CapabilityStatement | [[Definition]][s118] [[Ballerina Record]][m118] |
| 119). FamilyMemberHistoryForGeneticsAnalysis | [[Definition]][s119] [[Ballerina Record]][m119] |
| 120). ResearchSubject | [[Definition]][s120] [[Ballerina Record]][m120] |
| 121). Subscription | [[Definition]][s121] [[Ballerina Record]][m121] |
| 122). MetadataResource | [[Definition]][s122] [[Ballerina Record]][m122] |
| 123). LogicLibrary | [[Definition]][s123] [[Ballerina Record]][m123] |
| 124). CoverageEligibilityResponse | [[Definition]][s124] [[Ballerina Record]][m124] |
| 125). ModuleDefinitionLibrary | [[Definition]][s125] [[Ballerina Record]][m125] |
| 126). SubstanceReferenceInformation | [[Definition]][s126] [[Ballerina Record]][m126] |
| 127). ProvenanceRelevantHistory | [[Definition]][s127] [[Ballerina Record]][m127] |
| 128). RelatedPerson | [[Definition]][s128] [[Ballerina Record]][m128] |
| 129). SupplyRequest | [[Definition]][s129] [[Ballerina Record]][m129] |
| 130). Practitioner | [[Definition]][s130] [[Ballerina Record]][m130] |
| 131). VerificationResult | [[Definition]][s131] [[Ballerina Record]][m131] |
| 132). NutritionProduct | [[Definition]][s132] [[Ballerina Record]][m132] |
| 133). SubstanceProtein | [[Definition]][s133] [[Ballerina Record]][m133] |
| 134). ComputablePlanDefinition | [[Definition]][s134] [[Ballerina Record]][m134] |
| 135). Transport | [[Definition]][s135] [[Ballerina Record]][m135] |
| 136). Contract | [[Definition]][s136] [[Ballerina Record]][m136] |
| 137). Person | [[Definition]][s137] [[Ballerina Record]][m137] |
| 138). RiskAssessment | [[Definition]][s138] [[Ballerina Record]][m138] |
| 139). SubstanceDefinition | [[Definition]][s139] [[Ballerina Record]][m139] |
| 140). Organization | [[Definition]][s140] [[Ballerina Record]][m140] |
| 141). PublishablePlanDefinition | [[Definition]][s141] [[Ballerina Record]][m141] |
| 142). ChargeItem | [[Definition]][s142] [[Ballerina Record]][m142] |
| 143). ClinicalDocument | [[Definition]][s143] [[Ballerina Record]][m143] |
| 144). Encounter | [[Definition]][s144] [[Ballerina Record]][m144] |
| 145). SearchParameter | [[Definition]][s145] [[Ballerina Record]][m145] |
| 146). InsurancePlan | [[Definition]][s146] [[Ballerina Record]][m146] |
| 147). ActivityDefinition | [[Definition]][s147] [[Ballerina Record]][m147] |
| 148). Linkage | [[Definition]][s148] [[Ballerina Record]][m148] |
| 149). SubstanceSourceMaterial | [[Definition]][s149] [[Ballerina Record]][m149] |
| 150). ModelInfoLibrary | [[Definition]][s150] [[Ballerina Record]][m150] |
| 151). Ingredient | [[Definition]][s151] [[Ballerina Record]][m151] |
| 152). DeviceDispense | [[Definition]][s152] [[Ballerina Record]][m152] |
| 153). ShareableNamingSystem | [[Definition]][s153] [[Ballerina Record]][m153] |
| 154). DeviceRequest | [[Definition]][s154] [[Ballerina Record]][m154] |
| 155). ImmunizationRecommendation | [[Definition]][s155] [[Ballerina Record]][m155] |
| 156). Task | [[Definition]][s156] [[Ballerina Record]][m156] |
| 157). TestPlan | [[Definition]][s157] [[Ballerina Record]][m157] |
| 158). BiologicallyDerivedProductDispense | [[Definition]][s158] [[Ballerina Record]][m158] |
| 159). Requirements | [[Definition]][s159] [[Ballerina Record]][m159] |
| 160). Specimen | [[Definition]][s160] [[Ballerina Record]][m160] |
| 161). AllergyIntolerance | [[Definition]][s161] [[Ballerina Record]][m161] |
| 162). ChargeItemDefinition | [[Definition]][s162] [[Ballerina Record]][m162] |
| 163). EpisodeOfCare | [[Definition]][s163] [[Ballerina Record]][m163] |
| 164). OperationDefinition | [[Definition]][s164] [[Ballerina Record]][m164] |
| 165). Observationresprate | [[Definition]][s165] [[Ballerina Record]][m165] |
| 166). MedicationRequest | [[Definition]][s166] [[Ballerina Record]][m166] |
| 167). ShareableActivityDefinition | [[Definition]][s167] [[Ballerina Record]][m167] |
| 168). Device | [[Definition]][s168] [[Ballerina Record]][m168] |
| 169). EncounterHistory | [[Definition]][s169] [[Ballerina Record]][m169] |
| 170). MolecularSequence | [[Definition]][s170] [[Ballerina Record]][m170] |
| 171). Flag | [[Definition]][s171] [[Ballerina Record]][m171] |
| 172). SubstanceNucleicAcid | [[Definition]][s172] [[Ballerina Record]][m172] |
| 173). AppointmentResponse | [[Definition]][s173] [[Ballerina Record]][m173] |
| 174). StructureMap | [[Definition]][s174] [[Ballerina Record]][m174] |
| 175). RegulatedAuthorization | [[Definition]][s175] [[Ballerina Record]][m175] |
| 176). Library | [[Definition]][s176] [[Ballerina Record]][m176] |
| 177). MedicationStatement | [[Definition]][s177] [[Ballerina Record]][m177] |
| 178). CommunicationRequest | [[Definition]][s178] [[Ballerina Record]][m178] |
| 179). Basic | [[Definition]][s179] [[Ballerina Record]][m179] |
| 180). TestReport | [[Definition]][s180] [[Ballerina Record]][m180] |
| 181). Observationbodyheight | [[Definition]][s181] [[Ballerina Record]][m181] |
| 182). HealthcareService | [[Definition]][s182] [[Ballerina Record]][m182] |
| 183). InventoryReport | [[Definition]][s183] [[Ballerina Record]][m183] |
| 184). EvidenceReport | [[Definition]][s184] [[Ballerina Record]][m184] |
| 185). ShareableTestScript | [[Definition]][s185] [[Ballerina Record]][m185] |
| 186). PublishableConceptMap | [[Definition]][s186] [[Ballerina Record]][m186] |
| 187). AuditEvent | [[Definition]][s187] [[Ballerina Record]][m187] |
| 188). PaymentReconciliation | [[Definition]][s188] [[Ballerina Record]][m188] |
| 189). SpecimenDefinition | [[Definition]][s189] [[Ballerina Record]][m189] |
| 190). CQLLibrary | [[Definition]][s190] [[Ballerina Record]][m190] |
| 191). DetectedIssue | [[Definition]][s191] [[Ballerina Record]][m191] |
| 192). CompartmentDefinition | [[Definition]][s192] [[Ballerina Record]][m192] |
| 193). FHIRPathLibrary | [[Definition]][s193] [[Ballerina Record]][m193] |
| 194). MedicationKnowledge | [[Definition]][s194] [[Ballerina Record]][m194] |
| 195). CoverageEligibilityRequest | [[Definition]][s195] [[Ballerina Record]][m195] |
| 196). SubscriptionStatus | [[Definition]][s196] [[Ballerina Record]][m196] |
| 197). CDSHooksRequestOrchestration | [[Definition]][s197] [[Ballerina Record]][m197] |
| 198). ClinicalImpression | [[Definition]][s198] [[Ballerina Record]][m198] |
| 199). NutritionIntake | [[Definition]][s199] [[Ballerina Record]][m199] |
| 200). CanonicalResource | [[Definition]][s200] [[Ballerina Record]][m200] |
| 201). Claim | [[Definition]][s201] [[Ballerina Record]][m201] |

[m1]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#Appointment
[m2]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#RequestOrchestration
[m3]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#MessageDefinition
[m4]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#Endpoint
[m5]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#Consent
[m6]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#ArtifactAssessment
[m7]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#Measure
[m8]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#Permission
[m9]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#ActorDefinition
[m10]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#ConditionDefinition
[m11]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#DocumentReference
[m12]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#GraphDefinition
[m13]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#Parameters
[m14]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#PublishableNamingSystem
[m15]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#MeasureReport
[m16]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#PractitionerRole
[m17]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#CDSHooksGuidanceResponse
[m18]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#DeviceUsage
[m19]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#PackagedProductDefinition
[m20]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#ServiceRequest
[m21]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#BodyStructure
[m22]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#Slot
[m23]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#PublishableActivityDefinition
[m24]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#SubscriptionTopic
[m25]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#PaymentNotice
[m26]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#Group
[m27]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#ImplementationGuide
[m28]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#CareTeam
[m29]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#ImagingStudy
[m30]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#ClinicalUseDefinition
[m31]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#FamilyMemberHistory
[m32]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#Observationheartrate
[m33]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#ObservationDefinition
[m34]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#Substance
[m35]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#Communication
[m36]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#ShareableLibrary
[m37]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#ShareableConceptMap
[m38]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#DocumentStructure
[m39]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#ImmunizationEvaluation
[m40]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#EBMRecommendation
[m41]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#Observationbodytemp
[m42]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#ActualGroup
[m43]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#MessageHeader
[m44]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#ManufacturedItemDefinition
[m45]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#Provenance
[m46]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#Questionnaire
[m47]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#PublishableLibrary
[m48]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#Observationbodyweight
[m49]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#ExplanationOfBenefit
[m50]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#ResearchStudy
[m51]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#DeviceAssociation
[m52]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#StructureDefinition
[m53]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#Observationvitalspanel
[m54]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#CarePlan
[m55]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#Procedure
[m56]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#List
[m57]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#ConceptMap
[m58]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#ELMLibrary
[m59]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#Immunization
[m60]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#BiologicallyDerivedProduct
[m61]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#VisionPrescription
[m62]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#EvidenceVariable
[m63]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#ImagingSelection
[m64]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#DeviceMetric
[m65]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#ProfileForCatalog
[m66]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#CDSHooksServicePlanDefinition
[m67]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#AdverseEvent
[m68]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#MedicinalProductDefinition
[m69]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#GuidanceResponse
[m70]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#Observation
[m71]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#MedicationAdministration
[m72]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#EnrollmentResponse
[m73]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#Binary
[m74]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#ShareablePlanDefinition
[m75]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#TestScript
[m76]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#GenomicStudy
[m77]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#InventoryItem
[m78]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#SubstancePolymer
[m79]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#ClaimResponse
[m80]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#MedicationDispense
[m81]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#ExampleLipidProfile
[m82]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#OrganizationAffiliation
[m83]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#DiagnosticReport
[m84]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#Observationbp
[m85]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#NutritionOrder
[m86]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#TerminologyCapabilities
[m87]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#Evidence
[m88]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#Citation
[m89]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#Condition
[m90]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#Composition
[m91]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#Observationoxygensat
[m92]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#DeviceMetricObservationProfile
[m93]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#Patient
[m94]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#Coverage
[m95]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#QuestionnaireResponse
[m96]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#Observationbmi
[m97]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#NamingSystem
[m98]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#ExampleScenario
[m99]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#SupplyDelivery
[m100]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#Schedule
[m101]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#DeviceDefinition
[m102]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#PlanDefinition
[m103]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#Location
[m104]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#AdministrableProductDefinition
[m105]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#Account
[m106]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#ShareableMeasure
[m107]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#Invoice
[m108]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#Observationheadcircum
[m109]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#EventDefinition
[m110]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#FormularyItem
[m111]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#Goal
[m112]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#DocumentSectionLibrary
[m113]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#EnrollmentRequest
[m114]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#PublishableMeasure
[m115]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#GroupDefinition
[m116]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#Medication
[m117]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#Observationvitalsigns
[m118]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#CapabilityStatement
[m119]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#FamilyMemberHistoryForGeneticsAnalysis
[m120]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#ResearchSubject
[m121]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#Subscription
[m122]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#MetadataResource
[m123]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#LogicLibrary
[m124]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#CoverageEligibilityResponse
[m125]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#ModuleDefinitionLibrary
[m126]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#SubstanceReferenceInformation
[m127]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#ProvenanceRelevantHistory
[m128]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#RelatedPerson
[m129]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#SupplyRequest
[m130]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#Practitioner
[m131]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#VerificationResult
[m132]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#NutritionProduct
[m133]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#SubstanceProtein
[m134]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#ComputablePlanDefinition
[m135]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#Transport
[m136]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#Contract
[m137]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#Person
[m138]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#RiskAssessment
[m139]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#SubstanceDefinition
[m140]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#Organization
[m141]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#PublishablePlanDefinition
[m142]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#ChargeItem
[m143]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#ClinicalDocument
[m144]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#Encounter
[m145]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#SearchParameter
[m146]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#InsurancePlan
[m147]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#ActivityDefinition
[m148]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#Linkage
[m149]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#SubstanceSourceMaterial
[m150]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#ModelInfoLibrary
[m151]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#Ingredient
[m152]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#DeviceDispense
[m153]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#ShareableNamingSystem
[m154]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#DeviceRequest
[m155]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#ImmunizationRecommendation
[m156]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#Task
[m157]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#TestPlan
[m158]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#BiologicallyDerivedProductDispense
[m159]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#Requirements
[m160]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#Specimen
[m161]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#AllergyIntolerance
[m162]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#ChargeItemDefinition
[m163]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#EpisodeOfCare
[m164]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#OperationDefinition
[m165]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#Observationresprate
[m166]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#MedicationRequest
[m167]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#ShareableActivityDefinition
[m168]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#Device
[m169]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#EncounterHistory
[m170]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#MolecularSequence
[m171]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#Flag
[m172]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#SubstanceNucleicAcid
[m173]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#AppointmentResponse
[m174]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#StructureMap
[m175]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#RegulatedAuthorization
[m176]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#Library
[m177]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#MedicationStatement
[m178]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#CommunicationRequest
[m179]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#Basic
[m180]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#TestReport
[m181]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#Observationbodyheight
[m182]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#HealthcareService
[m183]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#InventoryReport
[m184]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#EvidenceReport
[m185]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#ShareableTestScript
[m186]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#PublishableConceptMap
[m187]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#AuditEvent
[m188]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#PaymentReconciliation
[m189]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#SpecimenDefinition
[m190]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#CQLLibrary
[m191]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#DetectedIssue
[m192]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#CompartmentDefinition
[m193]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#FHIRPathLibrary
[m194]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#MedicationKnowledge
[m195]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#CoverageEligibilityRequest
[m196]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#SubscriptionStatus
[m197]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#CDSHooksRequestOrchestration
[m198]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#ClinicalImpression
[m199]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#NutritionIntake
[m200]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#CanonicalResource
[m201]: https://lib.ballerina.io/healthcare/health.fhir.r5.international500/1.0.0#Claim

[s1]: http://hl7.org/fhir/StructureDefinition/Appointment
[s2]: http://hl7.org/fhir/StructureDefinition/RequestOrchestration
[s3]: http://hl7.org/fhir/StructureDefinition/MessageDefinition
[s4]: http://hl7.org/fhir/StructureDefinition/Endpoint
[s5]: http://hl7.org/fhir/StructureDefinition/Consent
[s6]: http://hl7.org/fhir/StructureDefinition/ArtifactAssessment
[s7]: http://hl7.org/fhir/StructureDefinition/Measure
[s8]: http://hl7.org/fhir/StructureDefinition/Permission
[s9]: http://hl7.org/fhir/StructureDefinition/ActorDefinition
[s10]: http://hl7.org/fhir/StructureDefinition/ConditionDefinition
[s11]: http://hl7.org/fhir/StructureDefinition/DocumentReference
[s12]: http://hl7.org/fhir/StructureDefinition/GraphDefinition
[s13]: http://hl7.org/fhir/StructureDefinition/Parameters
[s14]: http://hl7.org/fhir/StructureDefinition/publishablenamingsystem
[s15]: http://hl7.org/fhir/StructureDefinition/MeasureReport
[s16]: http://hl7.org/fhir/StructureDefinition/PractitionerRole
[s17]: http://hl7.org/fhir/StructureDefinition/cdshooksguidanceresponse
[s18]: http://hl7.org/fhir/StructureDefinition/DeviceUsage
[s19]: http://hl7.org/fhir/StructureDefinition/PackagedProductDefinition
[s20]: http://hl7.org/fhir/StructureDefinition/ServiceRequest
[s21]: http://hl7.org/fhir/StructureDefinition/BodyStructure
[s22]: http://hl7.org/fhir/StructureDefinition/Slot
[s23]: http://hl7.org/fhir/StructureDefinition/publishableactivitydefinition
[s24]: http://hl7.org/fhir/StructureDefinition/SubscriptionTopic
[s25]: http://hl7.org/fhir/StructureDefinition/PaymentNotice
[s26]: http://hl7.org/fhir/StructureDefinition/Group
[s27]: http://hl7.org/fhir/StructureDefinition/ImplementationGuide
[s28]: http://hl7.org/fhir/StructureDefinition/CareTeam
[s29]: http://hl7.org/fhir/StructureDefinition/ImagingStudy
[s30]: http://hl7.org/fhir/StructureDefinition/ClinicalUseDefinition
[s31]: http://hl7.org/fhir/StructureDefinition/FamilyMemberHistory
[s32]: http://hl7.org/fhir/StructureDefinition/heartrate
[s33]: http://hl7.org/fhir/StructureDefinition/ObservationDefinition
[s34]: http://hl7.org/fhir/StructureDefinition/Substance
[s35]: http://hl7.org/fhir/StructureDefinition/Communication
[s36]: http://hl7.org/fhir/StructureDefinition/shareablelibrary
[s37]: http://hl7.org/fhir/StructureDefinition/shareableconceptmap
[s38]: http://hl7.org/fhir/StructureDefinition/example-composition
[s39]: http://hl7.org/fhir/StructureDefinition/ImmunizationEvaluation
[s40]: http://hl7.org/fhir/StructureDefinition/ebmrecommendation
[s41]: http://hl7.org/fhir/StructureDefinition/bodytemp
[s42]: http://hl7.org/fhir/StructureDefinition/actualgroup
[s43]: http://hl7.org/fhir/StructureDefinition/MessageHeader
[s44]: http://hl7.org/fhir/StructureDefinition/ManufacturedItemDefinition
[s45]: http://hl7.org/fhir/StructureDefinition/Provenance
[s46]: http://hl7.org/fhir/StructureDefinition/Questionnaire
[s47]: http://hl7.org/fhir/StructureDefinition/publishablelibrary
[s48]: http://hl7.org/fhir/StructureDefinition/bodyweight
[s49]: http://hl7.org/fhir/StructureDefinition/ExplanationOfBenefit
[s50]: http://hl7.org/fhir/StructureDefinition/ResearchStudy
[s51]: http://hl7.org/fhir/StructureDefinition/DeviceAssociation
[s52]: http://hl7.org/fhir/StructureDefinition/StructureDefinition
[s53]: http://hl7.org/fhir/StructureDefinition/vitalspanel
[s54]: http://hl7.org/fhir/StructureDefinition/CarePlan
[s55]: http://hl7.org/fhir/StructureDefinition/Procedure
[s56]: http://hl7.org/fhir/StructureDefinition/List
[s57]: http://hl7.org/fhir/StructureDefinition/ConceptMap
[s58]: http://hl7.org/fhir/StructureDefinition/elmlibrary
[s59]: http://hl7.org/fhir/StructureDefinition/Immunization
[s60]: http://hl7.org/fhir/StructureDefinition/BiologicallyDerivedProduct
[s61]: http://hl7.org/fhir/StructureDefinition/VisionPrescription
[s62]: http://hl7.org/fhir/StructureDefinition/EvidenceVariable
[s63]: http://hl7.org/fhir/StructureDefinition/ImagingSelection
[s64]: http://hl7.org/fhir/StructureDefinition/DeviceMetric
[s65]: http://hl7.org/fhir/StructureDefinition/catalog
[s66]: http://hl7.org/fhir/StructureDefinition/cdshooksserviceplandefinition
[s67]: http://hl7.org/fhir/StructureDefinition/AdverseEvent
[s68]: http://hl7.org/fhir/StructureDefinition/MedicinalProductDefinition
[s69]: http://hl7.org/fhir/StructureDefinition/GuidanceResponse
[s70]: http://hl7.org/fhir/StructureDefinition/Observation
[s71]: http://hl7.org/fhir/StructureDefinition/MedicationAdministration
[s72]: http://hl7.org/fhir/StructureDefinition/EnrollmentResponse
[s73]: http://hl7.org/fhir/StructureDefinition/Binary
[s74]: http://hl7.org/fhir/StructureDefinition/shareableplandefinition
[s75]: http://hl7.org/fhir/StructureDefinition/TestScript
[s76]: http://hl7.org/fhir/StructureDefinition/GenomicStudy
[s77]: http://hl7.org/fhir/StructureDefinition/InventoryItem
[s78]: http://hl7.org/fhir/StructureDefinition/SubstancePolymer
[s79]: http://hl7.org/fhir/StructureDefinition/ClaimResponse
[s80]: http://hl7.org/fhir/StructureDefinition/MedicationDispense
[s81]: http://hl7.org/fhir/StructureDefinition/triglyceride
[s82]: http://hl7.org/fhir/StructureDefinition/OrganizationAffiliation
[s83]: http://hl7.org/fhir/StructureDefinition/DiagnosticReport
[s84]: http://hl7.org/fhir/StructureDefinition/bp
[s85]: http://hl7.org/fhir/StructureDefinition/NutritionOrder
[s86]: http://hl7.org/fhir/StructureDefinition/TerminologyCapabilities
[s87]: http://hl7.org/fhir/StructureDefinition/Evidence
[s88]: http://hl7.org/fhir/StructureDefinition/Citation
[s89]: http://hl7.org/fhir/StructureDefinition/Condition
[s90]: http://hl7.org/fhir/StructureDefinition/Composition
[s91]: http://hl7.org/fhir/StructureDefinition/oxygensat
[s92]: http://hl7.org/fhir/StructureDefinition/devicemetricobservation
[s93]: http://hl7.org/fhir/StructureDefinition/Patient
[s94]: http://hl7.org/fhir/StructureDefinition/Coverage
[s95]: http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse
[s96]: http://hl7.org/fhir/StructureDefinition/bmi
[s97]: http://hl7.org/fhir/StructureDefinition/NamingSystem
[s98]: http://hl7.org/fhir/StructureDefinition/ExampleScenario
[s99]: http://hl7.org/fhir/StructureDefinition/SupplyDelivery
[s100]: http://hl7.org/fhir/StructureDefinition/Schedule
[s101]: http://hl7.org/fhir/StructureDefinition/DeviceDefinition
[s102]: http://hl7.org/fhir/StructureDefinition/PlanDefinition
[s103]: http://hl7.org/fhir/StructureDefinition/Location
[s104]: http://hl7.org/fhir/StructureDefinition/AdministrableProductDefinition
[s105]: http://hl7.org/fhir/StructureDefinition/Account
[s106]: http://hl7.org/fhir/StructureDefinition/shareablemeasure
[s107]: http://hl7.org/fhir/StructureDefinition/Invoice
[s108]: http://hl7.org/fhir/StructureDefinition/headcircum
[s109]: http://hl7.org/fhir/StructureDefinition/EventDefinition
[s110]: http://hl7.org/fhir/StructureDefinition/FormularyItem
[s111]: http://hl7.org/fhir/StructureDefinition/Goal
[s112]: http://hl7.org/fhir/StructureDefinition/example-section-library
[s113]: http://hl7.org/fhir/StructureDefinition/EnrollmentRequest
[s114]: http://hl7.org/fhir/StructureDefinition/publishablemeasure
[s115]: http://hl7.org/fhir/StructureDefinition/groupdefinition
[s116]: http://hl7.org/fhir/StructureDefinition/Medication
[s117]: http://hl7.org/fhir/StructureDefinition/vitalsigns
[s118]: http://hl7.org/fhir/StructureDefinition/CapabilityStatement
[s119]: http://hl7.org/fhir/StructureDefinition/familymemberhistory-genetic
[s120]: http://hl7.org/fhir/StructureDefinition/ResearchSubject
[s121]: http://hl7.org/fhir/StructureDefinition/Subscription
[s122]: http://hl7.org/fhir/StructureDefinition/MetadataResource
[s123]: http://hl7.org/fhir/StructureDefinition/logiclibrary
[s124]: http://hl7.org/fhir/StructureDefinition/CoverageEligibilityResponse
[s125]: http://hl7.org/fhir/StructureDefinition/moduledefinitionlibrary
[s126]: http://hl7.org/fhir/StructureDefinition/SubstanceReferenceInformation
[s127]: http://hl7.org/fhir/StructureDefinition/provenance-relevant-history
[s128]: http://hl7.org/fhir/StructureDefinition/RelatedPerson
[s129]: http://hl7.org/fhir/StructureDefinition/SupplyRequest
[s130]: http://hl7.org/fhir/StructureDefinition/Practitioner
[s131]: http://hl7.org/fhir/StructureDefinition/VerificationResult
[s132]: http://hl7.org/fhir/StructureDefinition/NutritionProduct
[s133]: http://hl7.org/fhir/StructureDefinition/SubstanceProtein
[s134]: http://hl7.org/fhir/StructureDefinition/computableplandefinition
[s135]: http://hl7.org/fhir/StructureDefinition/Transport
[s136]: http://hl7.org/fhir/StructureDefinition/Contract
[s137]: http://hl7.org/fhir/StructureDefinition/Person
[s138]: http://hl7.org/fhir/StructureDefinition/RiskAssessment
[s139]: http://hl7.org/fhir/StructureDefinition/SubstanceDefinition
[s140]: http://hl7.org/fhir/StructureDefinition/Organization
[s141]: http://hl7.org/fhir/StructureDefinition/publishableplandefinition
[s142]: http://hl7.org/fhir/StructureDefinition/ChargeItem
[s143]: http://hl7.org/fhir/StructureDefinition/clinicaldocument
[s144]: http://hl7.org/fhir/StructureDefinition/Encounter
[s145]: http://hl7.org/fhir/StructureDefinition/SearchParameter
[s146]: http://hl7.org/fhir/StructureDefinition/InsurancePlan
[s147]: http://hl7.org/fhir/StructureDefinition/ActivityDefinition
[s148]: http://hl7.org/fhir/StructureDefinition/Linkage
[s149]: http://hl7.org/fhir/StructureDefinition/SubstanceSourceMaterial
[s150]: http://hl7.org/fhir/StructureDefinition/modelinfolibrary
[s151]: http://hl7.org/fhir/StructureDefinition/Ingredient
[s152]: http://hl7.org/fhir/StructureDefinition/DeviceDispense
[s153]: http://hl7.org/fhir/StructureDefinition/shareablenamingsystem
[s154]: http://hl7.org/fhir/StructureDefinition/DeviceRequest
[s155]: http://hl7.org/fhir/StructureDefinition/ImmunizationRecommendation
[s156]: http://hl7.org/fhir/StructureDefinition/Task
[s157]: http://hl7.org/fhir/StructureDefinition/TestPlan
[s158]: http://hl7.org/fhir/StructureDefinition/BiologicallyDerivedProductDispense
[s159]: http://hl7.org/fhir/StructureDefinition/Requirements
[s160]: http://hl7.org/fhir/StructureDefinition/Specimen
[s161]: http://hl7.org/fhir/StructureDefinition/AllergyIntolerance
[s162]: http://hl7.org/fhir/StructureDefinition/ChargeItemDefinition
[s163]: http://hl7.org/fhir/StructureDefinition/EpisodeOfCare
[s164]: http://hl7.org/fhir/StructureDefinition/OperationDefinition
[s165]: http://hl7.org/fhir/StructureDefinition/resprate
[s166]: http://hl7.org/fhir/StructureDefinition/MedicationRequest
[s167]: http://hl7.org/fhir/StructureDefinition/shareableactivitydefinition
[s168]: http://hl7.org/fhir/StructureDefinition/Device
[s169]: http://hl7.org/fhir/StructureDefinition/EncounterHistory
[s170]: http://hl7.org/fhir/StructureDefinition/MolecularSequence
[s171]: http://hl7.org/fhir/StructureDefinition/Flag
[s172]: http://hl7.org/fhir/StructureDefinition/SubstanceNucleicAcid
[s173]: http://hl7.org/fhir/StructureDefinition/AppointmentResponse
[s174]: http://hl7.org/fhir/StructureDefinition/StructureMap
[s175]: http://hl7.org/fhir/StructureDefinition/RegulatedAuthorization
[s176]: http://hl7.org/fhir/StructureDefinition/Library
[s177]: http://hl7.org/fhir/StructureDefinition/MedicationStatement
[s178]: http://hl7.org/fhir/StructureDefinition/CommunicationRequest
[s179]: http://hl7.org/fhir/StructureDefinition/Basic
[s180]: http://hl7.org/fhir/StructureDefinition/TestReport
[s181]: http://hl7.org/fhir/StructureDefinition/bodyheight
[s182]: http://hl7.org/fhir/StructureDefinition/HealthcareService
[s183]: http://hl7.org/fhir/StructureDefinition/InventoryReport
[s184]: http://hl7.org/fhir/StructureDefinition/EvidenceReport
[s185]: http://hl7.org/fhir/StructureDefinition/shareabletestscript
[s186]: http://hl7.org/fhir/StructureDefinition/publishableconceptmap
[s187]: http://hl7.org/fhir/StructureDefinition/AuditEvent
[s188]: http://hl7.org/fhir/StructureDefinition/PaymentReconciliation
[s189]: http://hl7.org/fhir/StructureDefinition/SpecimenDefinition
[s190]: http://hl7.org/fhir/StructureDefinition/cqllibrary
[s191]: http://hl7.org/fhir/StructureDefinition/DetectedIssue
[s192]: http://hl7.org/fhir/StructureDefinition/CompartmentDefinition
[s193]: http://hl7.org/fhir/StructureDefinition/fhirpathlibrary
[s194]: http://hl7.org/fhir/StructureDefinition/MedicationKnowledge
[s195]: http://hl7.org/fhir/StructureDefinition/CoverageEligibilityRequest
[s196]: http://hl7.org/fhir/StructureDefinition/SubscriptionStatus
[s197]: http://hl7.org/fhir/StructureDefinition/cdshooksrequestorchestration
[s198]: http://hl7.org/fhir/StructureDefinition/ClinicalImpression
[s199]: http://hl7.org/fhir/StructureDefinition/NutritionIntake
[s200]: http://hl7.org/fhir/StructureDefinition/CanonicalResource
[s201]: http://hl7.org/fhir/StructureDefinition/Claim
