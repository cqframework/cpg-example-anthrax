Instance: latex-allergy-flag
InstanceOf: Flag
Usage: #example
Title: "Latex Allergy Flag"
Description: "Flag indicating patient has latex allergy"
* subject = Reference(Patient/patient-1)
* author = Reference(anthrax-example-device)
* code = $sct#370860007 "Verification of allergy status (procedure)"
* status = #active
* extension
  * url = Canonical(flag-detail)
  * valueReference = Reference(AllergyIntolerance/11)