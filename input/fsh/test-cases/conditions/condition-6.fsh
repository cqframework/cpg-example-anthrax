Instance: condition-6
InstanceOf: Condition
Usage: #example
Description: "Test Case"
* subject = Reference(patient-1)
* code = $icd-10-cm#Z20.810 "Contact with and (suspected) exposure to anthrax"
  * text = "Contact with and (suspected) exposure to anthrax"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* onsetDateTime = "2019-05-03T15:00:00.000Z"