Instance: med-request-4
InstanceOf: MedicationRequest
Usage: #example
Description: "Test Case"
* id = "5"
* status = #active
* subject = Reference(patient-1)
* intent = #proposal
* medicationCodeableConcept = $rxnorm#311296 "Levofloxacin 750 MG Oral Tablet"
  * text = "Levofloxacin 750 MG Oral Tablet"