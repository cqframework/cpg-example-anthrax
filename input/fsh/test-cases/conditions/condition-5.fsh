Instance: condition-5
InstanceOf: Condition
Usage: #example
Description: "Test Case"
* subject = Reference(patient-3)
* code = $sct#77386006 "Pregnancy (finding)"
  * text = "Pregnancy (finding)"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* onsetDateTime = "2019-03-03T16:00:00.000Z"