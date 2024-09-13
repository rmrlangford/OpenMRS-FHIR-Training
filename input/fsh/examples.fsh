Instance: PatientExample1
InstanceOf: OpenMRSPatient
Usage: #example
Title: "Patient - Marital Status Captured"
Description: "Patient documented as married."
* name[+].given[+] = "Richard"
* name[=].given[+] = "Michael"
* maritalStatus = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus#M
* maritalStatus.extension[MaritalStatusDate].valueDate = "1999-01-01"

Instance: PatientExample2
InstanceOf: OpenMRSPatient
Usage: #example
Title: "Patient - Marital Status Not Captured"
Description: "Patient marital status not documented."
* name[+].given[+] = "Richard"
* name[=].given[+] = "Michael"

Instance: PatientExample3
InstanceOf: OpenMRSPatient
Usage: #example
Title: "Patient - Marital Status Not Captured (Incl. Relation)"
Description: "Patient marital status not documented but includes a Mother relationship."
* name[+].given[+] = "Richard"
* name[=].given[+] = "Michael"
* link[+].type = #seealso
* link[=].other = Reference(MotherRelatedPerson)

Instance: MotherRelatedPerson
InstanceOf: OpenMRSPatientRelation
Usage: #example
Title: "Related Person - Mother"
Description: "Patient marital status not documented but includes a Mother relationship."
* name[+].given[+] = "Richard"
* name[=].given[+] = "Michael"
* patient = Reference(PatientExample3)
* relationship = http://terminology.hl7.org/CodeSystem/v3-RoleCode#MTH
* extension[MaritalStatusAndEffectiveDate][+].extension[MaritalStatus].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus#D
* extension[MaritalStatusAndEffectiveDate][=].extension[MaritalStatusDate].valueDate = "1999-01-01"