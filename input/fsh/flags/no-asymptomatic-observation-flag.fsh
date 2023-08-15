Instance: no-asymptomatic-observation-flag
InstanceOf: Flag
Usage: #example
* subject = Reference(Patient/42)
* author = Reference(anthrax-example-device)
* status = #active
* code = $sct#223447008 "Recommendation to document signs and symptoms (procedure)"
* extension
  * url = "http://hl7.org/fhir/StructureDefinition/flag-detail"
  * valueReference = Reference(Condition/1)