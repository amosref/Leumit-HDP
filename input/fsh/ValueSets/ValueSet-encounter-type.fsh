ValueSet: EncounterType
Id: encounter-type
Title: "Leumit encounter types"
Description: "Leumits local encounter type codes derived from each source system"
* ^url = $vs-encounter-type
* include codes from system $tamar-visit-types
* include codes from system $or-visit-types
* insert ConformanceMetadata
