Instance: ClindamycinRequest
InstanceOf: ActivityDefinition
Usage: #example
Title: "Clindamycin Request"
* insert RequestMetadata(ClindamycinRequest)
* insert UseContext
* identifier.value = "Anthrax_Post_Exposure_Prophylaxis_FHIRv102_CQL_v110/ClindamycinRequest"
* name = "Anthrax_Post_Exposure_Prophylaxis_Adults_Clindamycin_Request"
* kind = #MedicationRequest
* productCodeableConcept = $rxnorm#284215 "clindamycin HCl 300 MG Oral Capsule"
  * text = "clindamycin HCl 300 MG Oral Capsule"
* quantity = 360 $v3-orderableDrugForm#ORTAB
* dosage
  * text = "Two tablets every 8 hours for 60 days"
  * additionalInstruction.text = "none"
  * timing.repeat
    * frequency = 2
    * period = 8
    * periodUnit = #h
  * route = $sct#26643006 "Oral Route"
  * method = $sct#421521009 "Swallow - dosing instruction imperative (qualifier value)"