Instance: allergy-3
InstanceOf: AllergyIntolerance
Usage: #example
Description: "Test Case"
* patient = Reference(patient-1)
* code = $rxnorm#2551 "Ciprofloxacin"
  * text = "Ciprofloxacin"
* clinicalStatus = $allergy-status#active
* verificationStatus = $allergyintolerance-verification#confirmed "Confirmed"
* recordedDate = "2016-05-28T15:00:00.000Z"