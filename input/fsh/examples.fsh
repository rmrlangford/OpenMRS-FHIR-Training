Instance: PatientExample1
InstanceOf: OpenMRSPatient
Usage: #example
Title: "Patient Marital Status Captured"
Description: "Patient documented as married."
* name[+].given[+] = "Richard"
* name[=].given[+] = "Michael"
* maritalStatus = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus#M
* maritalStatus.extension[MaritalStatusDate].valueDate = "1999-01-01"

Instance: PatientExample2
InstanceOf: OpenMRSPatient
Usage: #example
Title: "Patient Marital Status Not Captured"
Description: "Patient marital status not documented."
* name[+].given[+] = "Richard"
* name[=].given[+] = "Michael"