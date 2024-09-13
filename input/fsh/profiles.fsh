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

* link 0..* MS
* link.other only Reference(OpenMRSPatientRelation)

Profile: OpenMRSPatientRelation
Parent: RelatedPerson
Id: openmrs-patient-relationship
Title: "OpenMRS Patient Related Person"
Description: "OpenMRS test patient relation"
* name 1..*
* name.given 1..*
* relationship 1..1
* extension contains MaritalStatusAndEffectiveDateExtension named MaritalStatusAndEffectiveDate 0..* MS