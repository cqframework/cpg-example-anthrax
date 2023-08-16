Instance: allergy-4
InstanceOf: AllergyIntolerance
Usage: #example
Description: "Test Case"
* patient = Reference(patient-1)
* code = $rxnorm#1314891 "latex"
  * text = "latex"
* clinicalStatus = $allergy-status#active
* verificationStatus = $allergyintolerance-verification#confirmed "Confirmed"
* recordedDate = "2019-06-03T15:00:00.000Z"