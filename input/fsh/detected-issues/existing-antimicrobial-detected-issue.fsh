Instance: existing-antimicrobial-detected-issue
InstanceOf: DetectedIssue
Usage: #example
Title: "Existing Antimicrobial Detected Issue"
Description: "Detected active antimicrobial prescription"
* detail = "The patient has an active prescription for [Ciprofloxacin]. Evaluate the dosage and duration to ensure a 60-day regimen of appropriate antibiotic post-anthrax exposure: [Ciprofloxacin 500 mg by mouth every 12 hours for 60 days]."
* author = Reference(anthrax-example-device)
* code = $v3-ActCode#NOTEQUIV "Not equivalent alert"
* implicated = Reference(med-request-1)
* mitigation.action = $sct#314529007 "Medication review due (situation)"
* status = #preliminary