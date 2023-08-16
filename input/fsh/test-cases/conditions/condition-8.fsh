Instance: condition-8
InstanceOf: Condition
Usage: #example
Description: "Test Case"
* subject = Reference(patient-3)
* code = $icd-10-cm#Z20.810 "Contact with and (suspected) exposure to anthrax"
  * text = "Contact with and (suspected) exposure to anthrax"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* onsetDateTime = "2019-05-20T15:00:00.000Z"