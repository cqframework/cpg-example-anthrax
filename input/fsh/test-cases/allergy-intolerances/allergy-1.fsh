Instance: allergy-1
InstanceOf: AllergyIntolerance
Usage: #example
Description: "Test Case"
* patient = Reference(patient-1)
* code = $rxnorm#404774 "Fibromyalgia (disorder)"
  * text = "Fibromyalgia (disorder)"
* clinicalStatus = $allergy-status#active
* verificationStatus = $allergyintolerance-verification#confirmed "Confirmed"
* recordedDate = "2018-12-03T16:00:00.000Z"