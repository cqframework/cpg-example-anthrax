Instance: allergy-5
InstanceOf: AllergyIntolerance
Usage: #example
Description: "Test Case"
* patient = Reference(patient-1)
* code = $rxnorm#3640 "doxycycline"
  * text = "doxycycline"
* clinicalStatus = $allergy-status#active
* verificationStatus = $allergyintolerance-verification#confirmed "Confirmed"
* recordedDate = "2015-05-28T15:00:00.000Z"