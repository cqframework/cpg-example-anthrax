Instance: med-request-3
InstanceOf: MedicationRequest
Usage: #example
Description: "Test Case"
* status = #active
* subject = Reference(patient-1)
* intent = #proposal
* medicationCodeableConcept = $rxnorm#1650143 "doxycycline hyclate 100 MG Oral Tablet"
  * text = "doxycycline hyclate 100 MG Oral Tablet"