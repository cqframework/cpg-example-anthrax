Instance: medication-statement-1
InstanceOf: MedicationStatement
Usage: #example
Description: "Test Case"
* subject = Reference(patient-1)
* status = #active
* effectiveDateTime = "2019-05-03T15:00:00.000Z"
* medicationCodeableConcept = $rxnorm#309309 "Ciprofloxacin 500 MG Oral Tablet"
  * text = "Ciprofloxacin 500 MG Oral Tablet"