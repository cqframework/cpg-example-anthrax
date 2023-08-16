Instance: allergy-12
InstanceOf: AllergyIntolerance
Usage: #example
Description: "Test Case"
* id = "11"
* patient = Reference(patient-1)
* code = $rxnorm#1314891 "latex"
  * text = "latex"
* clinicalStatus = $allergy-status#active
* verificationStatus = $allergyintolerance-verification#confirmed "Confirmed"
* recordedDate = "2016-05-28T15:00:00.000Z"