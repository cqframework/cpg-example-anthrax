Instance: CiprofloxacinRequest
InstanceOf: ActivityDefinition
Usage: #example
Title: "Anthrax Post Exposure Prophylaxis (PEP) for Adults: Ciprofloxacin Request"
* insert RequestMetadata(CiprofloxacinRequest)
* insert UseContext
* identifier.value = "Anthrax_Post_Exposure_Prophylaxis_FHIRv102_CQL_v110/CiprofloxacinRequest"
* name = "Anthrax_Post_Exposure_Prophylaxis_Adults_Ciprofloxacin_Request"
* kind = #MedicationRequest
* productCodeableConcept = $rxnorm#309309 "Ciprofloxacin 500 MG Oral Tablet"
  * text = "Ciprofloxacin 500 MG Oral Tablet"
* quantity = 120 $v3-orderableDrugForm#ORTAB
* dosage
  * text = "One every 12 hours for 60 days"
  * additionalInstruction[0].text = "CONTRAINDICATIONS: Diagnosis of myasthenia gravis and taking tizanidine."
  * additionalInstruction[+].text = "CAUTIONS: If patient is taking  blood thinners, oral antidiabetic drugs, seizure drugs, theophylline, drugs that prolong QT interval, duloxetine (Cymbalta), zolpidem (Ambien), clozapine or any other drug that may interact and cause serious side effects, consider another antibiotic regimen."
  * additionalInstruction[+].text = "Provide patient education on medications."
  * patientInstruction = "Take with full glass of water"
  * timing.repeat
    * frequency = 1
    * period = 12
    * periodUnit = #h
  * route = $sct#26643006 "Oral Route"
  * method = $sct#421521009 "Swallow - dosing instruction imperative (qualifier value)"