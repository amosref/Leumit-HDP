
Instance: leumit-encounter-example-001
InstanceOf: Encounter
Usage: #example
* meta.profile[0] = "http://fhir.health.gov.il/StructureDefinition/il-core-encounter"
* meta.profile[+] = "http://fhir.leumit.co.il/StructureDefinition/leumit-encounter"
* identifier.system = "http://fhir.leumit.co.il/identifier/encounter-id"
* identifier.value = "ENC-2025-001234"
* status = #finished
* class = $il-core-encounter-class#COMMUNITY-OR-HMO "Community Care/HMO setting"
* type.coding[0] = $tamar-visit-types#1 "ביקור רגיל"
* type.coding[+] = $sct#390906007 "Follow-up encounter (procedure)"
* serviceType.coding[0] = $sct#224891009 "Healthcare services (qualifier value)"
* serviceType.coding[+] = $expertise-code#79 "דיאטה"
* subject = Reference(Patient/leumit-patient-001)
* participant.type = $v3-ParticipationType#PPRF "primary performer"
* participant.individual = Reference(Practitioner/leumit-practitioner-001)
* period.start = "2025-07-07T10:00:00+03:00"
* period.end = "2025-07-07T10:30:00+03:00"
* reasonCode[0] = $patient-visit-reason-moh#0 "לא רשום"
* reasonCode[+] = $patient-visit-reason-leumit#79 "דיאטה"
* reasonReference = Reference(Condition/leumit-condition-001)
* diagnosis.condition = Reference(Condition/leumit-condition-001)
* location.location = Reference(Location/leumit-location-001)
* serviceProvider = Reference(Organization/leumit-organization-001)