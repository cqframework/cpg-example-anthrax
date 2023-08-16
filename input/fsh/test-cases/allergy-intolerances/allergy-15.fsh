Instance: allergy-15
InstanceOf: AllergyIntolerance
Usage: #example
Description: "Test Case"
* id = "5"
* patient = Reference(patient-1)
* code = $rxnorm#2551 "ciprofloxacin"
  * text = "ciprofloxacin"
* clinicalStatus = $allergy-status#active
* verificationStatus = $allergyintolerance-verification#confirmed "Confirmed"
* recordedDate = "2016-05-28T15:00:00.000Z"