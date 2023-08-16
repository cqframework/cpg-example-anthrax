Instance: allergy-7
InstanceOf: AllergyIntolerance
Usage: #example
Description: "Test Case"
* patient = Reference(patient-1)
* code = $rxnorm#139462 "moxifloxacin"
  * text = "moxifloxacin"
* clinicalStatus = $allergy-status#active
* verificationStatus = $allergyintolerance-verification#confirmed "Confirmed"
* recordedDate = "2013-05-28T15:00:00.000Z"