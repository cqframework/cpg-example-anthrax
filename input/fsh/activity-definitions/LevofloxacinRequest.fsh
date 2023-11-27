Instance: LevofloxacinRequest
InstanceOf: ActivityDefinition
Usage: #definition
Title: "Levofloxacin Request"
* insert RequestMetadata(LevofloxacinRequest)
* insert UseContext
* identifier.value = "Anthrax_Post_Exposure_Prophylaxis_FHIRv102_CQL_v110/LevofloxacinRequest"
* name = "Anthrax_Post_Exposure_Prophylaxis_Adults_Levofloxacin_Request"
* kind = #MedicationRequest
* productCodeableConcept = $rxnorm#311296 "Levofloxacin 750 MG Oral Tablet"
  * text = "Levofloxacin 750 MG Oral Tablet"
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