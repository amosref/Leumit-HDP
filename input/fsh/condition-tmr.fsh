Profile: LeumitDiagTmr
// Parent: il-hdp-condition 
Parent: il-core-condition 
Id: leumit-diag-tmr
Title: "Leumit Diagnosis Tamar"
Description: "Leumit Diagnosis records - Source System:Tamar"


// * meta.security[HDP].system = "http://fhir.health.gov.il/cs/il-hdp-information-buckets" (exactly)
// * meta.security[HDP].code = #diagnoses (exactly)
// * meta.security[HDP].display = "אבחנות" (exactly)

* id 1..1

* identifier 1..1
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier contains tmr 1..1
* identifier[tmr].system 1..1
* identifier[tmr].system = "http://fhir.leumit.co.il/identifier/diag-tmr" (exactly)
* identifier[tmr].value 1..1

* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding ^slicing.ordered = false
* code.coding contains snomed 0..1 and icd9 0..1 and icd10 0..1 and icd9local 0..1
* code.coding[snomed].system 1..1
* code.coding[snomed].system = "http://snomed.info/sct" (exactly)
* code.coding[snomed].code 1..1
* code.coding[icd9].system 1..1
* code.coding[icd9].system = "http://fhir.health.gov.il/ValueSet/icd9-cm-diagnoses" (exactly)
* code.coding[icd9].code 1..1
* code.coding[icd10].system 1..1
* code.coding[icd10].system = "http://hl7.org/fhir/sid/icd-10" (exactly)
* code.coding[icd10].code 1..1
* code.coding[icd9local].system 1..1
* code.coding[icd9local].system = "http://fhir.leumit.co.il/cs/icd9-local" (exactly)
* code.coding[icd9local].code 1..1

* subject.reference 1..1

* encounter.reference 1..1

* recorder.reference 1..1

* clinicalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/condition-clinical" (exactly)
* verificationStatus.coding.system = "http://terminology.hl7.org/CodeSystem/condition-ver-status" (exactly)
* category.coding.system = "http://terminology.hl7.org/CodeSystem/condition-category" (exactly)
* severity.coding.system = "http://snomed.info/sct" (exactly)
* insert ConformanceMetadata
