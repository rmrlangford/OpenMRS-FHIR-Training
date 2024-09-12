Profile: OpenMRSPatient
Parent: Patient
Id: openmrs-patient
Title: "OpenMRS Patient"
Description: "OpenMRS test patient"
* name 1..*
* name.given 1..2
* maritalStatus 0..1 MS
  * SU
  * extension contains MaritalStatusDateExtension named MaritalStatusDate 1..1

Extension: MaritalStatusDateExtension
Id: marital-status-date
Title: "Patient Marital Status Date"
Description: "An extension to capture the date for when the marital status came into effect"
* . SU
* value[x] only date
* valueDate 1..1
* ^context[+].type = #element
* ^context[=].expression = "Patient.maritalStatus"