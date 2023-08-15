Instance: DoxycyclineRequest
InstanceOf: ActivityDefinition
Usage: #example
Title: "Anthrax Post Exposure Prophylaxis (PEP) for Adults: Doxycycline Request"
* insert RequestMetadata(DoxycyclineRequest)
* insert UseContext
* identifier.value = "Anthrax_Post_Exposure_Prophylaxis_FHIRv102_CQL_v110/DoxycyclineRequest"
* name = "Anthrax_Post_Exposure_Prophylaxis_Adults_Doxycycline_Request"
* kind = #MedicationRequest
* productCodeableConcept = $rxnorm#1650143 "doxycycline hyclate 100 MG Oral Tablet"
  * text = "doxycycline hyclate 100 MG Oral Tablet"
* quantity = 120 $v3-orderableDrugForm#ORTAB
* dosage
  * text = "One every 12 hours for 60 days"
  * additionalInstruction[0].text = "CAUTIONS: If patient is taking  blood thinners, oral antidiabetic drugs, seizure drugs, or any other drug that may interact and cause serious side effects, consider another antibiotic regimen."
  * additionalInstruction[+].text = "Provide patient education on medications."
  * patientInstruction = "Take with full glass of water"
  * timing.repeat
    * frequency = 1
    * period = 12
    * periodUnit = #h
  * route = $sct#26643006 "Oral Route"
  * method = $sct#421521009 "Swallow - dosing instruction imperative (qualifier value)"