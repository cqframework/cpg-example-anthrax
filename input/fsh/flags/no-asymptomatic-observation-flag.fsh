Instance: no-asymptomatic-observation-flag
InstanceOf: Flag
Usage: #example
Title: "No Asymptomatic Observation Flag"
Description: "Asymptomatic flag example"
* subject = Reference(Patient/patient-1)
* author = Reference(anthrax-example-device)
* code = $sct#223447008 "Recommendation to document signs and symptoms (procedure)"
* status = #active
* extension
  * url = Canonical(flag-detail)
  * valueReference = Reference(Condition/1)