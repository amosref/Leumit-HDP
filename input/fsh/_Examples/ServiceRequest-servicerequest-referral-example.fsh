Instance: servicerequest-referral-example
InstanceOf: LabTestReferralServiceRequest
Usage: #example
Title: "דוגמה להפניית בדיקות מעבדה - כותרת"
Description: "Example of a lab test referral header"

* meta.security[HDP].system = $info-buckets
* meta.security[HDP].code = #laboratoryTests
* meta.security[HDP].display = "בדיקות מעבדה"

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\" dir=\"rtl\"><p><b>הפניה לבדיקות מעבדה</b></p><p>מזהה הפניה: REF-2024-001234</p><p>סטטוס: פעיל</p><p>מטופל: ישראל ישראלי</p><p>רופא מפנה: ד\"ר כהן</p><p>תאריך הפניה: 08/02/2024</p></div>"

* extension[statusReason].valueCodeableConcept.coding.system = $leumit-lab-test-referral-status
* extension[statusReason].valueCodeableConcept.coding.code = #routine
* extension[statusReason].valueCodeableConcept.text = "הפניה שגרתית"

* identifier.system = "http://fhir.leumit.co.il/identifier/lab-referral"
* identifier.value = "REF-2024-001234"

* status = #active
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

* authoredOn = "2024-02-08T09:00:00+02:00"

* requester = Reference(Practitioner/practitioner-example-leumit)
* requester.display = "ד\"ר כהן"
