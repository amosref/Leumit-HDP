Instance: LeumitAllergyIntoleranceExample
InstanceOf: LeumitAllergyIntolerance
Usage: #example
Title: "Leumit AllergyIntolerance - Pollen Allergy"
Description: "A sample allergy intolerance for a Leumit patient allergic to pollen, with anaphylaxis reaction."

* id = "leumit-allergy-intolerance-example"

* meta.profile[0] = "http://hdp.fhir.health.gov.il/StructureDefinition/il-hdp-allergy-intolerance"
* meta.profile[1] = "http://fhir.leumit.co.il/StructureDefinition/leumit-allergy-intolerance"
* meta.security[HDP].system = "http://fhir.health.gov.il/cs/il-hdp-information-buckets"
* meta.security[HDP].code = #allergiesAndIntolerances
* meta.security[HDP].display = "רגישויות"

* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active "Active"
* verificationStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#confirmed "Confirmed"
* type = #allergy
* category = #environment

* code.coding[hdp] = $sct#472734007 "Schinus pollen (substance)"
* code.coding[leumit] = $leumit-allergy-intolerance-code#4 "Pollen"

* patient = Reference(Patient/example)
* recordedDate = "2025-01-15"

* reaction.substance.coding[hdp] = $sct#472734007 "Schinus pollen (substance)"
* reaction.substance.coding[leumit] = $leumit-substance#4 "Pollen"
* reaction.manifestation.coding[hdp] = $sct#39579001 "Anaphylaxis (disorder)"
* reaction.manifestation.coding[leumit] = $leumit-manifestation#4 "אנפילקסיס"
* reaction.severity = #severe
