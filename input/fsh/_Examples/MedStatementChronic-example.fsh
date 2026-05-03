Instance: LeumitMedStatementChronic01
InstanceOf: LeumitMedStatementChronic
Usage: #example
Title: "Leumit Chronic MedicationStatement - Atorvastatin"
Description: "A sample chronic medication statement for a Leumit patient on Atorvastatin 20mg daily."

* id = "CHR.98234701"

* meta.profile[0] = "http://hdp.fhir.health.gov.il/StructureDefinition/il-hdp-medication-statement"
* meta.profile[1] = "http://fhir.leumit.co.il/StructureDefinition/med-statement-chronic"
* meta.security[HDP].system = "http://fhir.health.gov.il/cs/il-hdp-information-buckets"
* meta.security[HDP].code = #medications
* meta.security[HDP].display = "תרופות"

* extension[courseOfTherapyType].valueCodeableConcept = http://fhir.health.gov.il/cs/il-core-medication-course-of-therapy-type#chronic "Chronic therapy"

* identifier.system = "http://fhir.leumit.co.il/identifier/tamar-chronic"
* identifier.value = "98234701"

* status = #active

* statusReason.coding.system = "http://fhir.leumit.co.il/cs/tamar-status"
* statusReason.coding.code = #0
* statusReason.coding.display = "פעיל"

* category.coding = http://fhir.health.gov.il/cs/il-core-medication-statement-category#community-hmo "Community-hmo"

* medicationCodeableConcept.coding[yarpa].system = "http://yarpa.co.il/catalog"
* medicationCodeableConcept.coding[yarpa].code = #29055
* medicationCodeableConcept.coding[yarpa].display = "ATORVASTATIN TEVA 20 MG TABLETS"
* medicationCodeableConcept.coding[yarpa].userSelected = true
* medicationCodeableConcept.text = "אטורבסטטין 20 מ\"ג"

* subject = Reference(Patient/leumit-pat-928374)
* subject.reference = "Patient/leumit-pat-928374"

* context = Reference(Encounter/leumit-enc-556201)
* context.reference = "Encounter/leumit-enc-556201"

* effectiveDateTime = "2024-03-15"
* dateAsserted = "2024-03-15T10:30:00+02:00"

* informationSource = Reference(Practitioner/leumit-prac-44210)
* informationSource.reference = "Practitioner/leumit-prac-44210"

* dosage.timing.repeat.boundsPeriod.start = "2024-03-15"
* dosage.timing.repeat.frequency = 1
* dosage.timing.repeat.period = 1
* dosage.timing.repeat.periodUnit = #d

* dosage.route.coding[local].system = "http://fhir.leumit.co.il/cs/med-route"
* dosage.route.coding[local].code = #PO
* dosage.route.coding[local].display = "דרך הפה"
* dosage.route.coding[local].userSelected = true
* dosage.route.coding[snomed].system = "http://snomed.info/sct"
* dosage.route.coding[snomed].code = #26643006
* dosage.route.coding[snomed].display = "Oral route"
* dosage.route.coding[snomed].userSelected = false

* dosage.doseAndRate.doseQuantity.value = 20
* dosage.doseAndRate.doseQuantity.unit = "mg"
* dosage.doseAndRate.doseQuantity.system = "http://unitsofmeasure.org"
* dosage.doseAndRate.doseQuantity.code = #mg
