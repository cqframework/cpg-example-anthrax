Instance: allergy-13
InstanceOf: AllergyIntolerance
Usage: #example
Description: "Test Case"
* patient = Reference(patient-1)
* code = $cvx#24 "Anthrax vaccine"
  * text = "Anthrax vaccine"
* clinicalStatus = $allergy-status#active
* verificationStatus = $allergyintolerance-verification#confirmed "Confirmed"
* recordedDate = "2017-05-28T15:00:00.000Z"