Instance: observation-19
InstanceOf: Observation
Usage: #example
Description: "Test Case"
* status = #final
* code = $loinc#82810-3 "Pregnancy status"
  * text = "Pregnancy status"
* subject = Reference(patient-3)
* effectiveDateTime = "2019-04-03T15:00:00.000Z"
* issued = "2019-04-03T15:00:00.000Z"
* valueCodeableConcept = $sct#77386006 "Patient currently pregnant"
  * text = "Patient currently pregnant"