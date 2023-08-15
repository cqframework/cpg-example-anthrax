Instance: VaccineRequest
InstanceOf: ActivityDefinition
Usage: #example
Title: "Anthrax Post Exposure Prophylaxis (PEP) for Adults: Vaccine Request"
* insert RequestMetadata(VaccineRequest)
* insert UseContext
* identifier.value = "Anthrax_Post_Exposure_Prophylaxis_FHIRv102_CQL_v110/VaccineRequest"
* name = "Anthrax_Post_Exposure_Prophylaxis_Adults_Vaccine_Request"
* kind = #ImmunizationRecommendation
* code
  * coding[0] = $sct#49598002 "Anthrax vaccination"
  * coding[+] = $sct#170338000 "First anthrax vaccination"
* productCodeableConcept = $cvx#24 "Anthrax vaccine"
* dosage
  * text = "0.5mL"
  * additionalInstruction.text = "Epinephrine solution (1:1000) should be available for immediate use in the event that an anaphylactic reaction occurs."
  * doseAndRate.doseQuantity = 0.5 'mL' "mL"
  * route = $sct#34206005 "Subcutaneous route"