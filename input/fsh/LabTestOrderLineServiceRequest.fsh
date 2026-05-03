Profile: LabTestOrderLineServiceRequest
Parent: http://fhir.health.gov.il/StructureDefinition/il-core-service-request-lab
Id: lab-test-order-line-servicerequest
Title: "הזמנה - שורות ברמת קוד"
Description: "Lab Test Order Line serviceRequest profile"
* ^status = #draft

* meta only ILHDPMeta
* meta 1..1
* meta.security[HDP].system 1..1
* meta.security[HDP].code 1..1
* meta.security[HDP].system = $info-buckets (exactly)
* meta.security[HDP].code = #laboratoryTests (exactly)
* meta.security[HDP].display = "בדיקות מעבדה" (exactly)

* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains leumit 0..*
* code.coding[leumit].system = $leumit-lab-test-code
* code.coding[leumit] from $vs-leumit-lab-test-code (extensible)

* bodySite ^slicing.discriminator.type = #value
* bodySite ^slicing.discriminator.path = "coding.system"
* bodySite ^slicing.rules = #open
* bodySite contains leumit 0..*
* bodySite[leumit].coding.system = $LeumitBodySite
* bodySite[leumit] from $vs-leumit-body-site (extensible)

* extension contains http://hl7.org/fhir/StructureDefinition/request-statusReason named statusReason 0..1
* extension[statusReason].valueCodeableConcept from http://fhir.leumit.co.il/ValueSet/lab-test-order-status (extensible)
* insert ConformanceMetadata
