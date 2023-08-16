Instance: allergy-2
InstanceOf: AllergyIntolerance
Usage: #example
Description: "Test Case"
* patient = Reference(patient-1)
* code = $sct#111088007 "Latex (substance)"
  * text = "Latex (substance)"
* clinicalStatus = $allergy-status#active
* verificationStatus = $allergyintolerance-verification#confirmed "Confirmed"
* recordedDate = "2016-05-28T15:00:00.000Z"