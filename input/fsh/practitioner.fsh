Profile: LeumitPractitioner
Parent: ILCorePractitioner
Id: leumit-practitioner
Title: "Leumit Practitioner Profile"
Description: "Leumit proposed profile for a Practitioner resouce"
* identifier contains UserId 1..1 and PracId 0..*
* identifier[UserId].system 1..1
* identifier[UserId].system = "http://fhir.leumit.co.il/Identifier/UserId" (exactly) 
* identifier[UserId].type.coding.system 1..1
* identifier[UserId].type.coding.system = $identifierType (exactly)
* identifier[UserId].type.coding.code 1..1
* identifier[UserId].type.coding.code = #EN (exactly)
* identifier[PracId].system 1..1
* identifier[PracId].system = "http://fhir.leumit.co.il/Identifier/PracId" (exactly) 
// * telecom ^slicing.discriminator.type = #value
// * telecom ^slicing.discriminator.path = "system"
// * telecom ^slicing.rules = #open
// * telecom ^slicing.description = ""
// * telecom ^slicing.ordered = false

// * telecom[phone] 0..*
// * telecom[phone].system = #phone (exactly)
// // * telecom[phone].system = "http://fhir.leumit.co.il/StructureDefinition/ext-phone" (exactly)
// * telecom[fax] 0..*
// * telecom[fax].system = "http://fhir.leumit.co.il/StructureDefinition/ext-fax" (exactly)
// * telecom[sms] 0..*
// * telecom[sms].system = "http://fhir.leumit.co.il/StructureDefinition/ext-sms" (exactly)
// * telecom[email] 0..*
// * telecom[mail].system = "http://fhir.leumit.co.il/StructureDefinition/ext-mail" (exactly)
* insert ConformanceMetadata
