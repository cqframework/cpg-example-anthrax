Instance: allergy-9
InstanceOf: AllergyIntolerance
Usage: #example
Description: "Test Case"
* patient = Reference(patient-1)
* code = $rxnorm#404774 "Anthrax Vaccine Absorbed (substance/ingredient)"
  * text = "Anthrax Vaccine Absorbed (substance/ingredient)"
* clinicalStatus = $allergy-status#active
* verificationStatus = $allergyintolerance-verification#confirmed "Confirmed"
* recordedDate = "2016-05-28T15:00:00.000Z"