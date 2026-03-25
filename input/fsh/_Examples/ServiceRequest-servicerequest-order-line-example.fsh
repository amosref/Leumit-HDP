Instance: servicerequest-order-line-example
InstanceOf: LabTestOrderLineServiceRequest
Usage: #example
Title: "דוגמה להזמנת בדיקות מעבדה - שורת קוד"
Description: "Example of a lab test order line item"

* meta.security[HDP].system = $info-buckets
* meta.security[HDP].code = #laboratoryTests
* meta.security[HDP].display = "בדיקות מעבדה"

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\" dir=\"rtl\"><p><b>הזמנה לבדיקת המוגלובין</b></p><p>מזהה הזמנה: ORD-LINE-2024-005679</p><p>קוד בדיקה: המוגלובין</p><p>מטופל: ישראל ישראלי</p><p>מקום לקיחה: דם</p><p>סטטוס: הושלמה</p></div>"

* extension[statusReason].valueCodeableConcept.coding.system = $leumit-lab-test-order-status
* extension[statusReason].valueCodeableConcept.coding.code = #completed
* extension[statusReason].valueCodeableConcept.text = "הושלמה"

* identifier.system = "http://fhir.leumit.co.il/identifier/lab-order-line"
* identifier.value = "ORD-LINE-2024-005679"

* status = #completed
* intent = #order

* category[il-core].coding.system = $sct
* category[il-core].coding.code = #108252007
* category[il-core].coding.display = "Laboratory procedure"

* code.coding[leumit].system = $leumit-lab-test-code
* code.coding[leumit].code = #HGB
* code.coding[leumit].display = "המוגלובין"

* code.coding[+].system = "http://loinc.org"
* code.coding[=].code = #718-7
* code.coding[=].display = "Hemoglobin [Mass/volume] in Blood"

* bodySite[leumit].coding.system = $LeumitBodySite
* bodySite[leumit].coding.code = #160
* bodySite[leumit].coding.display = "דם"

* subject = Reference(Patient/patient-example-leumit)
* subject.display = "ישראל ישראלי"

* authoredOn = "2024-02-08T09:15:00+02:00"

* requester = Reference(Organization/organization-leumit)
* requester.display = "לאומית שירותי בריאות"

* performer = Reference(Organization/organization-leumit-lab)
* performer.display = "מעבדות לאומית"

* specimen = Reference(Specimen/specimen-example-blood)
