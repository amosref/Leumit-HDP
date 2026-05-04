Profile: LeumitAllergyIntolerance
Parent: ILHDPAllergyIntolerance
Id: leumit-allergy-intolerance
Title: "Leumit AllergyIntolerance Profile"
Description: "Leumit proposed profile for an AllergyIntolerance resource"

* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    hdp 0..1 and
    leumit 0..1
* code.coding[hdp] from $vs-il-core-allergy-intolerance-code (required)
* code.coding[hdp].system 1..1
* code.coding[hdp].code 1..1
* code.coding[leumit] from $vs-leumit-allergy-intolerance-code (required)
* code.coding[leumit].system 1..1
* code.coding[leumit].system = $leumit-allergy-intolerance-code (exactly)
* code.coding[leumit].code 1..1

* reaction.substance.coding ^slicing.discriminator.type = #pattern
* reaction.substance.coding ^slicing.discriminator.path = "$this"
* reaction.substance.coding ^slicing.rules = #open
* reaction.substance.coding contains
    hdp 0..1 and
    leumit 0..1
* reaction.substance.coding[hdp] from $vs-il-core-substance (required)
* reaction.substance.coding[hdp].system 1..1
* reaction.substance.coding[hdp].code 1..1
* reaction.substance.coding[leumit] from $vs-leumit-substance (required)
* reaction.substance.coding[leumit].system 1..1
* reaction.substance.coding[leumit].system = $leumit-substance (exactly)
* reaction.substance.coding[leumit].code 1..1

* reaction.manifestation.coding ^slicing.discriminator.type = #pattern
* reaction.manifestation.coding ^slicing.discriminator.path = "$this"
* reaction.manifestation.coding ^slicing.rules = #open
* reaction.manifestation.coding contains
    hdp 0..1 and
    leumit 0..1
* reaction.manifestation.coding[hdp] from $vs-il-core-manifestation (required)
* reaction.manifestation.coding[hdp].system 1..1
* reaction.manifestation.coding[hdp].code 1..1
* reaction.manifestation.coding[leumit] from $vs-leumit-manifestation (required)
* reaction.manifestation.coding[leumit].system 1..1
* reaction.manifestation.coding[leumit].system = $leumit-manifestation (exactly)
* reaction.manifestation.coding[leumit].code 1..1

* insert ConformanceMetadata
