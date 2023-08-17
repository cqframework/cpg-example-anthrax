Instance: antimicrobial-pregnant-pd
InstanceOf: PlanDefinition
Usage: #example
Title: "Antimicrobial pregnant"
* insert PlanDefinitionMetadata(antimicrobial-pregnant-pd)
* insert UseContext
* identifier.value = "Anthrax_Post_Exposure_Prophylaxis_FHIRv102_CQL_v110/OrderSet"
* name = "Anthrax_Post_Exposure_Prophylaxis_Adults"
* type
  * coding[+] = $plan-definition-type#eca-rule "ECA Rule"
  * coding[+] = $plan-definition-type#order-set "Order Set"
* action
  * title = "Anthrax Post Exposure Prophylaxis 5"
  * groupingBehavior = #logical-group
  * selectionBehavior = #any
  * trigger[+]
    * type = #data-added
    * data
      * type = #Condition
      * codeFilter
        * path = "code"
        * code[+] = $icd-10-cm#Z20.810 "Contact with and (suspected) exposure to anthrax"
        * code[+] = $sct#170475009 "Exposure to Bacillus anthracis (event)"
  * trigger[+]
    * type = #data-added
    * data
      * type = #Observation
      * codeFilter
        * path = "code"
        * code[+] = $icd-10-cm#Z20.810 "Contact with and (suspected) exposure to anthrax"
        * code[+] = $sct#170475009 "Exposure to Bacillus anthracis (event)"
        * code[+] = $sct#84387000 "Asymptomatic (finding)"
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql
      * expression = "GenerateOrderSet"
  * action
    * title = "Antimicrobial medications for anthrax post-exposure prophylaxis"
    * groupingBehavior = #visual-group
    * selectionBehavior = #at-most-one
    * action[+]
      * title = "First line antimicrobial medications for anthrax post-exposure prophylaxis"
      * groupingBehavior = #visual-group
      * selectionBehavior = #at-most-one
      * action[+]
        * type = $action-type#create "Create"
        * definitionCanonical = "#Inline-CiprofloxacinRequest-1"
      * action[+]
        * type = $action-type#create "Create"
        * definitionCanonical = "#Inline-DoxycyclineRequest-1"
    * action[+]
      * title = "Second line antimicrobial medications for anthrax post-exposure prophylaxis"
      * groupingBehavior = #visual-group
      * selectionBehavior = #at-most-one
      * action[+]
        * type = $action-type#create "Create"
        * definitionCanonical = "#Inline-LevofloxacinRequest-1"
      * action[+]
        * type = $action-type#create "Create"
        * definitionCanonical = "#Inline-MoxifloxacinRequest-1"
      * action[+]
        * type = $action-type#create "Create"
        * definitionCanonical = "#Inline-ClindamycinRequest-1"
* contained[+] = Inline-CiprofloxacinRequest-1
* contained[+] = Inline-DoxycyclineRequest-1
* contained[+] = Inline-LevofloxacinRequest-1
* contained[+] = Inline-MoxifloxacinRequest-1
* contained[+] = Inline-ClindamycinRequest-1

Instance: Inline-CiprofloxacinRequest-1
InstanceOf: ActivityDefinition
Usage: #inline
* insert RequestMetadata(Inline-CiprofloxacinRequest-1)
* insert UseContext
* identifier.value = "Anthrax_Post_Exposure_Prophylaxis_FHIRv102_CQL_v110/CiprofloxacinRequest"
* name = "Anthrax_Post_Exposure_Prophylaxis_Adults_Ciprofloxacin_Request"
* title = "Anthrax Post Exposure Prophylaxis (PEP) for Adults: Ciprofloxacin Request"
* kind = #MedicationRequest
* productCodeableConcept = $rxnorm#309309 "Ciprofloxacin 500 MG Oral Tablet"
  * text = "FIRST CHOICE: Ciprofloxacin 500 MG Oral Tablet"
* quantity = 120 $v3-orderableDrugForm#ORTAB
* dosage
  * text = "One every 12 hours for 60 days"
  * additionalInstruction[+].text = "Pregnant women at risk for inhalation anthrax should receive antimicrobial drug therapy regardless of pregnancy trimester."
  * additionalInstruction[+].text = "CONTRAINDICATIONS: Diagnosis of myasthenia gravis and taking tizanidine."
  * additionalInstruction[+].text = "CAUTIONS: If patient is taking  blood thinners, oral antidiabetic drugs, seizure drugs, theophylline, drugs that prolong QT interval, duloxetine (Cymbalta), zolpidem (Ambien), clozapine or any other drug that may interact and cause serious side effects, consider another antibiotic regimen."
  * additionalInstruction[+].text = "Provide patient education on medications."
  * patientInstruction = "Take with full glass of water"
  * timing.repeat
    * frequency = 1
    * period = 12
    * periodUnit = #h
  * route = $sct#26643006 "Oral Route"
  * method = $sct#421521009 "Swallow - dosing instruction imperative (qualifier value)"

Instance: Inline-DoxycyclineRequest-1
InstanceOf: ActivityDefinition
Usage: #inline
* insert RequestMetadata(Inline-DoxycyclineRequest-1)
* insert UseContext
* identifier.value = "Anthrax_Post_Exposure_Prophylaxis_FHIRv102_CQL_v110/DoxycyclineRequest"
* name = "Anthrax_Post_Exposure_Prophylaxis_Adults_Doxycycline_Request"
* title = "Anthrax Post Exposure Prophylaxis (PEP) for Adults: Doxycycline Request"
* kind = #MedicationRequest
* productCodeableConcept = $rxnorm#1650143 "doxycycline hyclate 100 MG Oral Tablet"
  * text = "SECOND CHOICE: doxycycline hyclate 100 MG Oral Tablet"
* quantity = 120 $v3-orderableDrugForm#ORTAB
* dosage
  * text = "One every 12 hours for 60 days"
  * additionalInstruction[+].text = "Pregnant women at risk for inhalation anthrax should receive antimicrobial drug therapy regardless of pregnancy trimester."
  * additionalInstruction[+].text = "CAUTIONS: If patient is taking  blood thinners, oral antidiabetic drugs, seizure drugs, or any other drug that may interact and cause serious side effects, consider another antibiotic regimen."
  * additionalInstruction[+].text = "Provide patient education on medications."
  * patientInstruction = "Take with full glass of water"
  * timing.repeat
    * frequency = 1
    * period = 12
    * periodUnit = #h
  * route = $sct#26643006 "Oral Route"
  * method = $sct#421521009 "Swallow - dosing instruction imperative (qualifier value)"

Instance: Inline-LevofloxacinRequest-1
InstanceOf: ActivityDefinition
Usage: #inline
* insert RequestMetadata(Inline-LevofloxacinRequest-1)
* insert UseContext
* identifier.value = "Anthrax_Post_Exposure_Prophylaxis_FHIRv102_CQL_v110/LevofloxacinRequest"
* name = "Anthrax_Post_Exposure_Prophylaxis_Adults_Levofloxacin_Request"
* title = "Anthrax Post Exposure Prophylaxis (PEP) for Adults: Levofloxacin Request"
* kind = #MedicationRequest
* productCodeableConcept = $rxnorm#311296 "Levofloxacin 750 MG Oral Tablet"
  * text = "Levofloxacin 750 MG Oral Tablet"
* quantity = 60 $v3-orderableDrugForm#ORTAB
* dosage
  * text = "One every day for 60 days"
  * additionalInstruction.text = "Pregnant women at risk for inhalation anthrax should receive antimicrobial drug therapy regardless of pregnancy trimester."
  * timing.repeat
    * frequency = 1
    * period = 1
    * periodUnit = #d
  * route = $sct#26643006 "Oral Route"
  * method = $sct#421521009 "Swallow - dosing instruction imperative (qualifier value)"

Instance: Inline-MoxifloxacinRequest-1
InstanceOf: ActivityDefinition
Usage: #inline
* insert RequestMetadata(Inline-MoxifloxacinRequest-1)
* insert UseContext
* identifier.value = "Anthrax_Post_Exposure_Prophylaxis_FHIRv102_CQL_v110/MoxifloxacinRequest"
* name = "Anthrax_Post_Exposure_Prophylaxis_Adults_Moxifloxacin_Request"
* title = "Anthrax Post Exposure Prophylaxis (PEP) for Adults: Moxifloxacin Request"
* kind = #MedicationRequest
* productCodeableConcept = $rxnorm#311787 "moxifloxacin HCl 400 MG Oral Tablet"
  * text = "moxifloxacin HCl 400 MG Oral Tablet"
* quantity = 60 $v3-orderableDrugForm#ORTAB
* dosage
  * text = "One every day for 60 days"
  * additionalInstruction.text = "Pregnant women at risk for inhalation anthrax should receive antimicrobial drug therapy regardless of pregnancy trimester."
  * timing.repeat
    * frequency = 1
    * period = 1
    * periodUnit = #d
  * route = $sct#26643006 "Oral Route"
  * method = $sct#421521009 "Swallow - dosing instruction imperative (qualifier value)"

Instance: Inline-ClindamycinRequest-1
InstanceOf: ActivityDefinition
Usage: #inline
* insert RequestMetadata(Inline-ClindamycinRequest-1)
* insert UseContext
* identifier.value = "Anthrax_Post_Exposure_Prophylaxis_FHIRv102_CQL_v110/ClindamycinRequest"
* name = "Anthrax_Post_Exposure_Prophylaxis_Adults_Clindamycin_Request"
* title = "Anthrax Post Exposure Prophylaxis (PEP) for Adults: Clindamycin Request"
* kind = #MedicationRequest
* productCodeableConcept = $rxnorm#284215 "clindamycin HCl 300 MG Oral Capsule"
  * text = "clindamycin HCl 300 MG Oral Capsule"
* quantity = 360 $v3-orderableDrugForm#ORTAB
* dosage
  * text = "Two tablets every 8 hours for 60 days"
  * additionalInstruction.text = "Pregnant women at risk for inhalation anthrax should receive antimicrobial drug therapy regardless of pregnancy trimester."
  * timing.repeat
    * frequency = 2
    * period = 8
    * periodUnit = #h
  * route = $sct#26643006 "Oral Route"
  * method = $sct#421521009 "Swallow - dosing instruction imperative (qualifier value)"