Instance: servicerequest-referral-line-example
InstanceOf: LabTestReferralLineServiceRequest
Usage: #example
Title: "דוגמה להפניית בדיקות מעבדה - שורת קוד"
Description: "Example of a lab test referral line item"

* meta.security[HDP].system = $info-buckets
* meta.security[HDP].code = #laboratoryTests
* meta.security[HDP].display = "בדיקות מעבדה"

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\" dir=\"rtl\"><p><b>הפניה לבדיקת גלוקוז</b></p><p>מזהה הפניה: REF-LINE-2024-001235</p><p>קוד בדיקה: בדיקת גלוקוז</p><p>מטופל: ישראל ישראלי</p><p>מקום לקיחה: דם</p><p>סטטוס: פעיל</p></div>"

* extension[statusReason].valueCodeableConcept.coding.system = $leumit-lab-test-referral-status
* extension[statusReason].valueCodeableConcept.coding.code = #routine
* extension[statusReason].valueCodeableConcept.text = "הפניה שגרתית"

* identifier.system = "http://fhir.leumit.co.il/identifier/lab-referral-line"
* identifier.value = "REF-LINE-2024-001235"

* status = #active
* intent = #order

* category[il-core].coding.system = $sct
* category[il-core].coding.code = #108252007
* category[il-core].coding.display = "Laboratory procedure"

* code.coding[leumit].system = $leumit-lab-test-code
* code.coding[leumit].code = #GLUC
* code.coding[leumit].display = "בדיקת גלוקוז"

* code.coding[+].system = "http://loinc.org"
* code.coding[=].code = #2345-7
* code.coding[=].display = "Glucose [Mass/volume] in Serum or Plasma"

* bodySite[leumit].coding.system = $LeumitBodySite
* bodySite[leumit].coding.code = #160
* bodySite[leumit].coding.display = "דם"

* subject = Reference(Patient/patient-example-leumit)
* subject.display = "ישראל ישראלי"

* authoredOn = "2024-02-08T09:00:00+02:00"

* requester = Reference(Practitioner/practitioner-example-leumit)
* requester.display = "ד\"ר כהן"
