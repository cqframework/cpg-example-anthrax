Instance: vaccine-allergy-flag
InstanceOf: Flag
Usage: #definition
Title: "Vaccine Allergy Flag"
Description: "Flag indicating patient has allergy to a vaccine"
* subject = Reference(Patient/patient-1)
* author = Reference(anthrax-example-device)
* code = $sct#370860007 "Verification of allergy status (procedure)"
* status = #active
* extension
  * url = Canonical(flag-detail)
  * valueReference = Reference(AllergyIntolerance/allergy-9)