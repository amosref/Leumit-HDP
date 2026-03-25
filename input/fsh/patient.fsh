Profile: LeumitPatient
Parent: ILCorePatient
Id: leumit-patient
Title: "Leumit Patient Profile"
Description: "Leumit proposed profile for a Patient resouce"
* extension contains InfoApproved named info-approved 0..1
* extension contains PopulationType named population-type 0..1
* extension contains FamilyHead named family-head 0..1
* identifier contains fict 0..1 MS
* identifier contains ppn-no-system 0..1

// creates a system element without a value and allows adding extension to it. thus there IS a system element
// even though it has no value
* identifier[ppn-no-system].system ^fixedUri.extension[0].url = $DAR
* identifier[ppn-no-system].system ^fixedUri.extension[0].valueCode = #unknown
* identifier[ppn-no-system].type = http://terminology.hl7.org/CodeSystem/v2-0203#PPN (exactly)
// ----------------------

* identifier[fict] ^short = "fictive patient ID"
* identifier[fict].use = #secondary (exactly)
* identifier[fict].system = $FictPatient (exactly)

// Profile: LeumitPatient
// Parent: ILCorePatient
// Id: leumit-patient
// Title: "Leumit Patient Profile"
// Description: "Leumit proposed profile for a Patient ריסורס"
// * extension contains InfoApproved named info-approved 0..1
// * extension contains PopulationType named population-type 0..1
// * extension contains FamilyHead named family-head 0..1
// * identifier contains fict 0..1 MS
// * identifier contains ppn-no-system 0..1
// * identifier[fict] ^short = "fictive patient ID"
// * identifier[fict].use = #secondary (exactly)
// * identifier[fict].system = $FictPatient (exactly)
// * identifier[ppn-no-system].system.patternUri = "http://fhir.leumit.co.il/Identifier/no-system"
// * identifier[ppn-no-system].system.extension contains $DAR named data-absent-reason 1..1
// * identifier[ppn-no-system].system.extension[data-absent-reason].valueCode = #unknown (exactly)
* insert ConformanceMetadata
