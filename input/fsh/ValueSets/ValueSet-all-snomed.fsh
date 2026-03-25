ValueSet: AllSnomedCodes
Id: all-snomed-codes
Title: "All Snomed Codes"
Description: "Valueset contining entire SNOMED-CT vocabulary"
* ^url = $vs-snomed-ct
* include codes from system $sct
* exclude codes from valueset $vs-il-core-doctor-to-doctor
* exclude codes from valueset $vs-il-core-virtual-type
* insert ConformanceMetadata
