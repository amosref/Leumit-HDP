// Profile: LeumitEncounter222
// Parent: il-core-encounter
// Id: leumit-encounter222
// Title: "Leumit Encounter Profile"
// // * ^url = $ILEncounter
// // * insert ConformanceMetadata
// * ^status = #draft
// * . ^short = "ILCore Encounter Profile"
// * . ^definition = "Israel Core proposed constraints and extensions on the Encounter resource profile."
// * . ^isModifier = false
// * ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
// * ^extension[=].valueCode = #trial-use
// * ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
// * ^extension[=].valueInteger = 1

// // * extension contains
// //     $modeOfArrival named modeOfArrival 0..1 and
// //     $ext-encounter-paying-entity named paying-entity 0..* and
// //     $ext-movement-number named movement-number 0..1
// * extension[modeOfArrival].value[x] only Coding
// * extension[modeOfArrival].valueCoding from $vs-patient-mode-of-arrival-moh (example)
// * extension[paying-entity] ^short = "Extension: Encounter Paying Entity"
// * extension[paying-entity] ^definition = "Paying Entity for the Encounter"
// * extension[movement-number] ^short = "Ext: Movement Sequence-Number"
// * extension[movement-number] ^definition = "Extension: Movement Sequence-Number"

// //Must Support + definitions
// * identifier and status and class and subject and period and serviceProvider MS
// * identifier ^definition = "Must support - <b>receiving system SHOULD store the value</b>"
// * status ^definition = "Must support - <b>receiving system SHALL either store the value as-is or SHALL be able to translate it into internal state and SHALL be able to reconstruct the value when requested to retrieve data</b>"
// * class ^definition = "Must support - <b>receiving system SHALL either store the value as-is or SHALL be able to translate it into internal state and SHALL be able to reconstruct the value when requested to retrieve data</b>"
// * subject ^definition = "Must support - <b>receiving system SHALL either store the value as-is or SHALL be able to translate it into internal state and SHALL be able to reconstruct the value when requested to retrieve data</b>"
// * period ^definition = "Must support - <b>receiving system SHALL either store the value as-is or SHALL be able to translate it into internal state and SHALL be able to reconstruct the value when requested to retrieve data</b>"
// * serviceProvider ^definition = "Must support - <b>receiving system SHALL either store the value as-is or SHALL be able to translate it into internal state and SHALL be able to reconstruct the value when requested to retrieve data</b>"

// * meta 1..1
// * meta.profile 2..*
// * meta.profile ^slicing.discriminator.type = #value
// * meta.profile ^slicing.discriminator.path = "$this"
// * meta.profile ^slicing.rules = #open
// * meta.profile contains
//    il-core 1..1 and
//    leumit 1..1
// * meta.profile[il-core] 1..1
// * meta.profile[il-core] = "http://fhir.health.gov.il/StructureDefinition/il-core-encounter" (exactly)
// * meta.profile[leumit] 1..1
// * meta.profile[leumit] = "http://fhir.leumit.co.il/StructureDefinition/leumit-encounter" (exactly)
// * identifier.system 1..1
// * identifier.value 1..1
// * class.system 1..1
// * class.code 1..1
// * class.display 1..1

// * class from $vs-il-core-encounter-class (extensible)
// * classHistory.class from $vs-il-core-encounter-class (extensible)

// // * type ^slicing.discriminator.type = #pattern
// // * type ^slicing.discriminator.path = "$this"
// // * type ^slicing.rules = #open
// // * type contains 
// //     virtual-encounters 0..* and
// //     doctor-to-doctor-consultation 0..*
// // * type[doctor-to-doctor-consultation] from $vs-il-core-doctor-to-doctor (required)
// // * type[virtual-encounters] from $vs-il-core-virtual-type (required)

// * type.coding 2..2 // up from 0..* 06/07/25
// * type.coding ^slicing.discriminator.type = #pattern
// * type.coding ^slicing.discriminator.path = "$this"
// * type.coding ^slicing.rules = #open
// * type.coding contains
//     tamar 1..1 and
//     snomed 1..1 
// * type.coding[tamar] from $vs-tamar-visit-types (required)
// * type.coding[tamar].system 1..1
// * type.coding[tamar].system = $tamar-visit-types (exactly)
// * type.coding[tamar].code 1..1
// * type.coding[snomed] from $vs-snomed-ct (required)
// * type.coding[snomed].system 1..1
// * type.coding[snomed].system = $sct (exactly)
// * type.coding[snomed].code 1..1

// // * type[doctor-to-doctor-consultation].coding ^slicing.discriminator.type = #pattern
// // * type[doctor-to-doctor-consultation].coding ^slicing.discriminator.path = "$this"
// // * type[doctor-to-doctor-consultation].coding ^slicing.rules = #open
// // * type[doctor-to-doctor-consultation].coding contains
// //     tamar 1..1 and
// //     snomed 1..1 
// * type[doctor-to-doctor-consultation].coding[tamar] from $vs-tamar-visit-types (required)
// * type[doctor-to-doctor-consultation].coding[tamar].system 1..1
// * type[doctor-to-doctor-consultation].coding[tamar].system = $tamar-visit-types (exactly)
// * type[doctor-to-doctor-consultation].coding[tamar].code 1..1
// * type[doctor-to-doctor-consultation].coding[snomed].system 1..1
// * type[doctor-to-doctor-consultation].coding[snomed].system = $sct (exactly)
// * type[doctor-to-doctor-consultation].coding[snomed].code 1..1

// // * type[virtual-encounters].coding ^slicing.discriminator.type = #pattern
// // * type[virtual-encounters].coding ^slicing.discriminator.path = "$this"
// // * type[virtual-encounters].coding ^slicing.rules = #open
// // * type[virtual-encounters].coding contains
// //     tamar 1..1 and
// //     snomed 1..1 
// * type[virtual-encounters].coding[tamar] from $vs-tamar-visit-types (required)
// * type[virtual-encounters].coding[tamar].system 1..1
// * type[virtual-encounters].coding[tamar].system = $tamar-visit-types (exactly)
// * type[virtual-encounters].coding[tamar].code 1..1
// * type[virtual-encounters].coding[snomed].system 1..1
// * type[virtual-encounters].coding[snomed].system = $sct (exactly)
// * type[virtual-encounters].coding[snomed].code 1..1

// * serviceType from $vs-il-core-service-type (extensible)
// * serviceType.coding 2..2
// * serviceType.coding ^slicing.discriminator.type = #value
// * serviceType.coding ^slicing.discriminator.path = "system"
// * serviceType.coding ^slicing.rules = #open
// * serviceType.coding contains
//     il-core 1..1 and
//     leumit 1..1
// * serviceType.coding[il-core] from $vs-il-core-service-type (required)
// * serviceType.coding[il-core].system = $sct (exactly)
// * serviceType.coding[il-core].code 1..1
// * serviceType.coding[il-core].display 1..1
// * serviceType.coding[leumit] from $visit-expertise-vs (required)
// * serviceType.coding[leumit].system = $expertise-code (exactly)
// * serviceType.coding[leumit].code 1..1
// * serviceType.coding[leumit].display 1..1
// * subject.reference 1..1
// * participant 1..*
// * period 1..1
// * period.start 1..1
// * period.end 1..1
// * reasonCode 2..*

// * subject 1..1
// * subject only Reference(ILCorePatient or ILCoreGroup)
// * subject.extension contains $ext-encounter-visitor-type named visitor-type 0..1
// * subject.extension[visitor-type] ^short = "Extension: Israeli CORE Encounter Visitor Type"
// * subject.extension[visitor-type] ^definition = "Classification of the visitor type (סוג מבקר/סוג כניסה) for the Encounter"
// * basedOn only Reference(ILCoreServiceRequest)
// // * participant ^slicing.discriminator.type = #value
// * participant ^slicing.discriminator.type = #pattern
// * participant ^slicing.discriminator.path = "type"
// * participant ^slicing.rules = #open
// * participant contains 
//     primary-performer 0..* MS
// * participant[primary-performer] 1..1
//   * ^definition = "Must support - <b>receiving system SHALL either store the value as-is or SHALL be able to translate it into internal state and SHALL be able to reconstruct the value when requested to retrieve data</b>"
//   * type MS
//   * type 1..1
//   * period MS
//   * period 0..1
//   * individual MS
//   * individual 1..1
//   * type ^patternCodeableConcept.coding.system = "http://terminology.hl7.org/CodeSystem/v3-ParticipationType" 
//   * type ^patternCodeableConcept.coding.code = #PPRF 
// //   * type.coding.system = "http://terminology.hl7.org/CodeSystem/v3-ParticipationType" (exactly)
// //   * type.coding.code = #PPRF (exactly)
// * participant.individual only Reference(ILCorePractitioner or ILCorePractitionerRole or ILCoreRelatedPerson)
// // * reasonCode ^slicing.discriminator.type = #pattern
// // * reasonCode ^slicing.discriminator.path = "$this"
// // * reasonCode ^slicing.rules = #open
// // * reasonCode contains moh-reason-code 0..* and leumit-reason-code 1..*
// * reasonCode contains leumit-reason-code 1..*
// // * reasonCode[moh-reason-code] from $vs-patient-visit-reason-moh (required)
// * reasonCode[moh-reason-code] 1..*
// * reasonCode[moh-reason-code].coding 1..1
// * reasonCode[moh-reason-code].coding.system 1..1
// * reasonCode[moh-reason-code].coding.code 1..1
// * reasonCode[moh-reason-code].coding.display 1..1
// // * reasonCode[leumit-reason-code] from $vs-patient-visit-reason-leumit
// * reasonCode[leumit-reason-code].coding 1..*
// * reasonCode[leumit-reason-code].coding.system 1..1
// // * reasonCode[leumit-reason-code].coding.system = $patient-visit-reason-leumit (exactly)
// * reasonCode[leumit-reason-code] ^patternCodeableConcept.coding.system = $patient-visit-reason-leumit
// * reasonCode[leumit-reason-code].coding.code 1..1
// * reasonCode[leumit-reason-code].coding.display 1..1

// * reasonReference only Reference(ILCoreCondition or ILCoreProcedure or ILCoreObservation or ImmunizationRecommendation)
// * reasonReference.reference 1..1
// * diagnosis.condition only Reference(ILCoreCondition or ILCoreProcedure)
// * diagnosis.condition 1..1
// * hospitalization.origin only Reference(ILCoreLocation or ILCoreOrganization)
// * hospitalization.admitSource from $vs-patient-admit-source-moh (preferred)
// * hospitalization.destination only Reference(ILCoreLocation or ILCoreOrganization)
// * hospitalization.dischargeDisposition from $vs-patient-release-type-moh (example)
// * location.location only Reference(ILCoreLocation)
// * location.location.reference 1..1
// * serviceProvider only Reference(ILCoreOrganization)
// * serviceProvider 1..1
// * serviceProvider.reference 1..1

// * partOf only Reference(ILCoreEncounter)


    