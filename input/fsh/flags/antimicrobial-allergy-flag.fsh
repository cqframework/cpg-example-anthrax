Instance: antimicrobial-allergy-flag
InstanceOf: Flag
Usage: #example
Title: "Antimicrobial Allergy Flag"
Description: "Flag indicating patient allergy to an antimicrobial"
* subject = Reference(Patient/patient-1)
* author = Reference(anthrax-example-device)
* code = $sct#370860007 "Verification of allergy status (procedure)"
* status = #active
* extension
  * url = Canonical(flag-detail)
  * valueReference = Reference(AllergyIntolerance/allergy-5)