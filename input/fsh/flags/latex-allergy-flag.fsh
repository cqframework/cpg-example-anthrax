Instance: latex-allergy-flag
InstanceOf: Flag
Usage: #example
* subject = Reference(Patient/42)
* author = Reference(anthrax-example-device)
* status = #active
* code = $sct#370860007 "Verification of allergy status (procedure)"
* extension
  * url = "http://hl7.org/fhir/StructureDefinition/flag-detail"
  * valueReference = Reference(AllergyIntolerance/11)