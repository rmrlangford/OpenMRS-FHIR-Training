Extension: MaritalStatusDateExtension
Id: marital-status-date
Title: "Patient Marital Status Date"
Description: "An extension to capture the date for when the marital status came into effect"
* . SU
* value[x] only date
* valueDate 1..1
* ^context[+].type = #element
* ^context[=].expression = "Patient.maritalStatus"
* ^context[+].type = #element
* ^context[=].expression = "RelatedPerson.extension"

Extension: MaritalStatusAndEffectiveDateExtension
Id: marital-status-and-effective-date
Title: "Patient Marital Status and Effective Date"
Description: "An extension to capture the marital status and the effective date for when the marital status came into effect"
* . SU 
* extension contains MaritalStatusExtension named MaritalStatus 1..1
* extension contains MaritalStatusDateExtension named MaritalStatusDate 1..1
* ^context[+].type = #element
* ^context[=].expression = "RelatedPerson"

Extension: MaritalStatusExtension
Id: marital-status
Title: "Patient Marital Status"
Description: "An extension to capture the marital status"
* value[x] only CodeableConcept
* valueCodeableConcept from http://hl7.org/fhir/ValueSet/marital-status (extensible)
* valueCodeableConcept 1..1
* ^context[+].type = #element
* ^context[=].expression = "RelatedPerson.extension"