Instance: patient-4
InstanceOf: Condition
Usage: #example
Description: "Test Case"
* subject = Reference(patient-3)
* code = $sct#77386006 "Pregnancy (finding)"
  * text = "Pregnancy (finding)"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* onsetDateTime = "2017-06-03T15:00:00.000Z"