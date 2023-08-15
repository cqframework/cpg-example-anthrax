Instance: latex-allergy-flag
InstanceOf: Flag
Usage: #example
Title: "Latex Allergy Flag"
Description: "Flag indicating patient has latex allergy"
* subject = Reference(Patient/42)
* author = Reference(anthrax-example-device)
* code = $sct#370860007 "Verification of allergy status (procedure)"
* status = #draft
* extension
  * url = "http://hl7.org/fhir/StructureDefinition/flag-detail"
  * valueReference = Reference(AllergyIntolerance/11)