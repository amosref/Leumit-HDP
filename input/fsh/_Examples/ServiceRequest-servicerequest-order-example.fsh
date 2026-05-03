Instance: servicerequest-order-example
InstanceOf: LabTestOrderServiceRequest
Usage: #example
Title: "דוגמה להזמנת בדיקות מעבדה - כותרת"
Description: "Example of a lab test order header"

* meta.security[HDP].system = $info-buckets
* meta.security[HDP].code = #laboratoryTests
* meta.security[HDP].display = "בדיקות מעבדה"

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\" dir=\"rtl\"><p><b>הזמנה לבדיקות מעבדה</b></p><p>מזהה הזמנה: ORD-2024-005678</p><p>סטטוס: הושלמה</p><p>מטופל: ישראל ישראלי</p><p>תאריך הזמנה: 08/02/2024</p></div>"

* extension[statusReason].valueCodeableConcept.coding.system = $leumit-lab-test-order-status
* extension[statusReason].valueCodeableConcept.coding.code = #completed
* extension[statusReason].valueCodeableConcept.text = "הושלמה"

* identifier.system = "http://fhir.leumit.co.il/identifier/lab-order"
* identifier.value = "ORD-2024-005678"

* status = #completed
* intent = #order

* category[il-core].coding.system = $sct
* category[il-core].coding.code = #108252007
* category[il-core].coding.display = "Laboratory procedure"

* code.coding.system = "http://loinc.org"
* code.coding.code = #24323-8
* code.coding.display = "Comprehensive metabolic 2000 panel - Serum or Plasma"
* code.text = "פאנל מטבולי מקיף"

* subject = Reference(Patient/patient-example-leumit)
* subject.display = "ישראל ישראלי"

* authoredOn = "2024-02-08T09:15:00+02:00"

* requester = Reference(Organization/organization-leumit)
* requester.display = "לאומית שירותי בריאות"

* performer = Reference(Organization/organization-leumit-lab)
* performer.display = "מעבדות לאומית"
