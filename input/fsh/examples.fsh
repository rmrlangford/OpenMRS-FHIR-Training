Instance: PatientExample1
InstanceOf: OpenMRSPatient
Usage: #example
Title: "Patient example 1"
Description: "Patient is married"
* name[+].given[+] = "Richard"
* name[=].given[+] = "Michael"
* maritalStatus = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus#M

Instance: PatientExample2
InstanceOf: OpenMRSPatient
Usage: #example
Title: "Patient example 2"
Description: "Patient is not married"
* name[+].given[+] = "Richard"
* name[=].given[+] = "Michael"