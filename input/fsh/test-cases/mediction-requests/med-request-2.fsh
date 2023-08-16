Instance: med-request-2
InstanceOf: MedicationRequest
Usage: #example
Description: "Test Case"
* status = #active
* subject = Reference(patient-3)
* intent = #proposal
* medicationCodeableConcept = $rxnorm#309309 "Ciprofloxacin 500 MG Oral Tablet"
  * text = "Ciprofloxacin 500 MG Oral Tablet"