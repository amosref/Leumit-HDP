Profile: LeumitMedStatementChronic
Parent: ILHDPMedicationStatement
Id: med-statement-chronic
Title: "Leumit Chronic MedicationStatement Profile"
Description: "Leumit local profile for chronic medication statements, derived from ILHDPMedicationStatement."
* insert ConformanceMetadata

* meta.profile ^slicing.discriminator.type = #value
* meta.profile ^slicing.discriminator.path = "$this"
* meta.profile ^slicing.rules = #open
* meta.profile contains leumit-chronic 0..1 and hdp 0..1
* meta.profile[leumit-chronic] = "http://fhir.leumit.co.il/StructureDefinition/med-statement-chronic" (exactly)
* meta.profile[hdp] = "http://fhir.health.gov.il/StructureDefinition/il-hdp-medication-statement" (exactly)
* id 1..1
* extension[courseOfTherapyType].valueCodeableConcept = http://fhir.health.gov.il/cs/il-core-medication-course-of-therapy-type#chronic "Chronic therapy"
* identifier.system 1..1
* identifier.system = "http://fhir.leumit.co.il/identifier/tamar-chronic" (exactly)
* statusReason.coding.system = "http://fhir.leumit.co.il/cs/tamar-status" (exactly)
* category.coding.code = #community-hmo
* category.coding.display = "Community-hmo"
* medicationCodeableConcept.coding 1..*
* medicationCodeableConcept.coding ^slicing.discriminator.type = #value
* medicationCodeableConcept.coding ^slicing.discriminator.path = "system"
* medicationCodeableConcept.coding ^slicing.rules = #open
* medicationCodeableConcept.coding contains
    yarpa 0..1 and
    local-yarpa 0..1 and
    snomed 0..1
* medicationCodeableConcept.coding[yarpa].system 1..1
* medicationCodeableConcept.coding[yarpa].system = "http://yarpa.co.il/catalog" (exactly)
* medicationCodeableConcept.coding[yarpa].code 1..1
* medicationCodeableConcept.coding[yarpa].display 1..1
* medicationCodeableConcept.coding[yarpa].userSelected = true

* medicationCodeableConcept.coding[local-yarpa].system 1..1
* medicationCodeableConcept.coding[local-yarpa].system = "http://fhir.leumit.co.il/cs/yarpa-catalog-local" (exactly)
* medicationCodeableConcept.coding[local-yarpa].code 1..1
* medicationCodeableConcept.coding[local-yarpa].display 1..1
* medicationCodeableConcept.coding[local-yarpa].userSelected = true

* medicationCodeableConcept.coding[snomed].system 1..1
* medicationCodeableConcept.coding[snomed].system = $sct (exactly)
* medicationCodeableConcept.coding[snomed].code 1..1
* medicationCodeableConcept.coding[snomed].display 1..1

* medicationCodeableConcept.text 0..1

* dosage.route.coding ^slicing.discriminator.type = #value
* dosage.route.coding ^slicing.discriminator.path = "system"
* dosage.route.coding ^slicing.rules = #open
* dosage.route.coding contains
    snomed 0..1 and
    local 1..1

* dosage.route.coding[snomed].system 1..1
* dosage.route.coding[snomed].system = $sct (exactly)
* dosage.route.coding[snomed].code 0..1
* dosage.route.coding[snomed].display 0..1
* dosage.route.coding[snomed].userSelected = false

* dosage.route.coding[local].system 1..1
* dosage.route.coding[local].system = "http://fhir.leumit.co.il/cs/med-route" (exactly)
* dosage.route.coding[local].code 0..1
* dosage.route.coding[local].display 0..1
* dosage.route.coding[local].userSelected = true

* dosage.method.coding ^slicing.discriminator.type = #value
* dosage.method.coding ^slicing.discriminator.path = "system"
* dosage.method.coding ^slicing.rules = #open
* dosage.method.coding contains
    snomed 0..1 and
    local 0..1

* dosage.method.coding[snomed].system 1..1
* dosage.method.coding[snomed].system = $sct (exactly)
* dosage.method.coding[snomed].code 0..1
* dosage.method.coding[snomed].display 0..1

* dosage.method.coding[local].system 1..1
* dosage.method.coding[local].system = "http://fhir.leumit.co.il/cs/med-method" (exactly)
* dosage.method.coding[local].code 0..1
* dosage.method.coding[local].display 0..1

* subject.reference 1..1
