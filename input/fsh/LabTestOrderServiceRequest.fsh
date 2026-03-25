Profile: LabTestOrderServiceRequest
Parent: http://fhir.health.gov.il/StructureDefinition/il-core-service-request-lab
Id: lab-test-order-servicerequest
Title: "הזמנה - כותרת"
Description: "Lab Test Order serviceRequest profile"
* ^status = #draft

* meta only ILHDPMeta
* meta 1..1
* meta.security[HDP].system 1..1
* meta.security[HDP].code 1..1
* meta.security[HDP].system = $info-buckets (exactly)
* meta.security[HDP].code = #laboratoryTests (exactly)
* meta.security[HDP].display = "בדיקות מעבדה" (exactly)

* extension contains http://hl7.org/fhir/StructureDefinition/request-statusReason named statusReason 0..1
* extension[statusReason].valueCodeableConcept from http://fhir.leumit.co.il/ValueSet/lab-test-order-status (extensible)
* insert ConformanceMetadata
