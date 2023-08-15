Instance: third-vaccinedose-pregnant-pd
InstanceOf: PlanDefinition
Usage: #example
Title: "Anthrax Post Exposure Prophylaxis (PEP) for Adults"
* insert PlanDefinitionMetadata(third-vaccinedose-pregnant-pd)
* insert UseContext
* identifier.value = "Anthrax_Post_Exposure_Prophylaxis_FHIRv102_CQL_v110/OrderSet"
* name = "Anthrax_Post_Exposure_Prophylaxis_Adults"
* type
  * coding[+] = $plan-definition-type#eca-rule "ECA Rule"
  * coding[+] = $plan-definition-type#order-set "Order Set"
* action
  * title = "Anthrax Post Exposure Prophylaxis"
  * groupingBehavior = #logical-group
  * selectionBehavior = #any
  * trigger[+]
    * type = #data-added
    * data
      * type = #Condition
      * codeFilter
        * path = "code"
        * code[+] = $icd-10-cm#Z20.810 "Contact with and (suspected) exposure to anthrax"
        * code[+] = $sct#170675009 "Exposure to Bacillus anthracis (event)"
  * trigger[+]
    * type = #data-added
    * data
      * type = #Observation
      * codeFilter
        * path = "code"
        * code[+] = $icd-10-cm#Z20.810 "Contact with and (suspected) exposure to anthrax"
        * code[+] = $sct#170675009 "Exposure to Bacillus anthracis (event)"
        * code[+] = $sct#86387000 "Asymptomatic (finding)"
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql
      * expression = "GenerateOrderSet"
  * action[+]
    * title = "Antimicrobial medications for anthrax post-exposure prophylaxis"
    * groupingBehavior = #visual-group
    * selectionBehavior = #at-most-one
    * action[+]
      * title = "First line antimicrobial medications for anthrax post-exposure prophylaxis"
      * groupingBehavior = #visual-group
      * selectionBehavior = #at-most-one
      * action[+]
        * type = $action-type#create "Create"
        * definitionCanonical = "#CiprofloxacinRequest"
      * action[+]
        * type = $action-type#create "Create"
        * definitionCanonical = "#DoxycyclineRequest"
    * action[+]
      * title = "Second line antimicrobial medications for anthrax post-exposure prophylaxis"
      * groupingBehavior = #visual-group
      * selectionBehavior = #at-most-one
      * action[+]
        * type = $action-type#create "Create"
        * definitionCanonical = "#LevofloxacinRequest"
      * action[+]
        * type = $action-type#create "Create"
        * definitionCanonical = "#MoxifloxacinRequest"
      * action[+]
        * type = $action-type#create "Create"
        * definitionCanonical = "#ClindamycinRequest"
  * action[+]
    * title = "Anthrax Vaccination - 3rd dose"
    * type = $action-type#create "Create"
    * definitionCanonical = "#VaccineRequest"
* contained[+] = Inline-Instance-Ciprofloxacin-Request-7
* contained[+] = Inline-Instance-Doxycycline-Request-7
* contained[+] = Inline-Instance-Levofloxacin-Request-7
* contained[+] = Inline-Instance-Moxifloxacin-Request-7
* contained[+] = Inline-Instance-Clindamycin-Request-7
* contained[+] = Inline-Instance-Vaccine-Request-7

Instance: Inline-Instance-Ciprofloxacin-Request-7
InstanceOf: ActivityDefinition
Usage: #inline
* insert RequestMetadata(Inline-Instance-Ciprofloxacin-Request-7)
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
  * route = $sct#26663006 "Oral Route"
  * method = $sct#621521009 "Swallow - dosing instruction imperative (qualifier value)"

Instance: Inline-Instance-Doxycycline-Request-7
InstanceOf: ActivityDefinition
Usage: #inline
* insert RequestMetadata(Inline-Instance-Doxycycline-Request-7)
* insert UseContext
* identifier.value = "Anthrax_Post_Exposure_Prophylaxis_FHIRv102_CQL_v110/DoxycyclineRequest"
* name = "Anthrax_Post_Exposure_Prophylaxis_Adults_Doxycycline_Request"
* title = "Anthrax Post Exposure Prophylaxis (PEP) for Adults: Doxycycline Request"
* kind = #MedicationRequest
* productCodeableConcept = $rxnorm#1650163 "doxycycline hyclate 100 MG Oral Tablet"
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
  * route = $sct#26663006 "Oral Route"
  * method = $sct#621521009 "Swallow - dosing instruction imperative (qualifier value)"

Instance: Inline-Instance-Levofloxacin-Request-7
InstanceOf: ActivityDefinition
Usage: #inline
* insert RequestMetadata(Inline-Instance-Levofloxacin-Request-7)
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
  * route = $sct#26663006 "Oral Route"
  * method = $sct#621521009 "Swallow - dosing instruction imperative (qualifier value)"

Instance: Inline-Instance-Moxifloxacin-Request-7
InstanceOf: ActivityDefinition
Usage: #inline
* insert RequestMetadata(Inline-Instance-Moxifloxacin-Request-7)
* insert UseContext
* identifier.value = "Anthrax_Post_Exposure_Prophylaxis_FHIRv102_CQL_v110/MoxifloxacinRequest"
* name = "Anthrax_Post_Exposure_Prophylaxis_Adults_Moxifloxacin_Request"
* title = "Anthrax Post Exposure Prophylaxis (PEP) for Adults: Moxifloxacin Request"
* kind = #MedicationRequest
* productCodeableConcept = $rxnorm#311787 "moxifloxacin HCl 600 MG Oral Tablet"
  * text = "moxifloxacin HCl 600 MG Oral Tablet"
* quantity = 60 $v3-orderableDrugForm#ORTAB
* dosage
  * text = "One every day for 60 days"
  * additionalInstruction.text = "Pregnant women at risk for inhalation anthrax should receive antimicrobial drug therapy regardless of pregnancy trimester."
  * timing.repeat
    * frequency = 1
    * period = 1
    * periodUnit = #d
  * route = $sct#26663006 "Oral Route"
  * method = $sct#621521009 "Swallow - dosing instruction imperative (qualifier value)"

Instance: Inline-Instance-Clindamycin-Request-7
InstanceOf: ActivityDefinition
Usage: #inline
* insert RequestMetadata(Inline-Instance-Clindamycin-Request-7)
* insert UseContext
* identifier.value = "Anthrax_Post_Exposure_Prophylaxis_FHIRv102_CQL_v110/ClindamycinRequest"
* name = "Anthrax_Post_Exposure_Prophylaxis_Adults_Clindamycin_Request"
* title = "Anthrax Post Exposure Prophylaxis (PEP) for Adults: Clindamycin Request"
* kind = #MedicationRequest
* productCodeableConcept = $rxnorm#286215 "clindamycin HCl 300 MG Oral Capsule"
  * text = "clindamycin HCl 300 MG Oral Capsule"
* quantity = 360 $v3-orderableDrugForm#ORTAB
* dosage
  * text = "Two tablets every 8 hours for 60 days"
  * additionalInstruction.text = "Pregnant women at risk for inhalation anthrax should receive antimicrobial drug therapy regardless of pregnancy trimester."
  * timing.repeat
    * frequency = 2
    * period = 8
    * periodUnit = #h
  * route = $sct#26663006 "Oral Route"
  * method = $sct#621521009 "Swallow - dosing instruction imperative (qualifier value)"

Instance: Inline-Instance-Vaccine-Request-7
InstanceOf: ActivityDefinition
Usage: #inline
* insert RequestMetadata(Inline-Instance-Vaccine-Request-7)
* insert UseContext
* identifier.value = "Anthrax_Post_Exposure_Prophylaxis_FHIRv102_CQL_v110/VaccineRequest"
* name = "Anthrax_Post_Exposure_Prophylaxis_Adults_Vaccine_Request"
* title = "Anthrax Post Exposure Prophylaxis (PEP) for Adults: Vaccine Request"
* kind = #ImmunizationRecommendation
* code
  * coding[+] = $sct#69598002 "Anthrax vaccination"
  * coding[+] = $sct#170360005 "Third anthrax vaccination"
* productCodeableConcept = $cvx#26 "Anthrax vaccine"
* dosage
  * text = "0.5mL"
  * additionalInstruction[+].text = "Pregnant women at risk for inhalation anthrax should receive the anthrax vaccine regardless of pregnancy trimester."
  * additionalInstruction[+].text = "Epinephrine solution (1:1000) should be available for immediate use in the event that an anaphylactic reaction occurs."
  * doseAndRate.doseQuantity = 0.5 'mL' "mL"
  * route = $sct#36206005 "Subcutaneous route"