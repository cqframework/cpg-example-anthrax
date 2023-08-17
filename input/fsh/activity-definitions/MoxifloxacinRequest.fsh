Instance: MoxifloxacinRequest
InstanceOf: ActivityDefinition
Usage: #example
Title: "Moxifloxacin Request"
* insert RequestMetadata(MoxifloxacinRequest)
* insert UseContext
* identifier.value = "Anthrax_Post_Exposure_Prophylaxis_FHIRv102_CQL_v110/MoxifloxacinRequest"
* name = "Anthrax_Post_Exposure_Prophylaxis_Adults_Moxifloxacin_Request"
* kind = #MedicationRequest
* productCodeableConcept = $rxnorm#311787 "moxifloxacin HCl 400 MG Oral Tablet"
  * text = "moxifloxacin HCl 400 MG Oral Tablet"
* quantity = 60 $v3-orderableDrugForm#ORTAB
* dosage
  * text = "One every day for 60 days"
  * additionalInstruction.text = "none"
  * timing.repeat
    * frequency = 1
    * period = 1
    * periodUnit = #d
  * route = $sct#26643006 "Oral Route"
  * method = $sct#421521009 "Swallow - dosing instruction imperative (qualifier value)"