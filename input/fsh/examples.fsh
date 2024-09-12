Instance: PatientExample1
InstanceOf: OpenMRSPatient
Usage: #example
Title: "Patient example 1"
Description: "Patient is married"
* name[+].given[+] = "Richard"
* name[=].given[+] = "Michael"
* maritalStatus = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus#M
* maritalStatus.extension[MaritalStatusDate].valueDate = "1999-01-01"

Instance: PatientExample2
InstanceOf: OpenMRSPatient
Usage: #example
Title: "Patient example 2"
Description: "Patient is not married"
* name[+].given[+] = "Richard"
* name[=].given[+] = "Michael"