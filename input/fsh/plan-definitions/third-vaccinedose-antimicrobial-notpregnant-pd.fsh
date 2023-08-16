Instance: third-vaccinedose-antimicrobial-notpregnant-pd
InstanceOf: PlanDefinition
Usage: #example
Title: "Anthrax Post Exposure Prophylaxis (PEP) for Adults"
* insert PlanDefinitionMetadata(third-vaccinedose-antimicrobial-notpregnant-pd)
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
    * definitionCanonical = "#Inline-Vaccine-Request-10"
* contained[+] = CiprofloxacinRequest
* contained[+] = DoxycyclineRequest
* contained[+] = LevofloxacinRequest
* contained[+] = MoxifloxacinRequest
* contained[+] = ClindamycinRequest
* contained[+] = Inline-Vaccine-Request-10

Instance: Inline-Vaccine-Request-10
InstanceOf: ActivityDefinition
Usage: #inline
* insert RequestMetadata(Inline-Vaccine-Request-10)
* insert UseContext
* identifier.value = "Anthrax_Post_Exposure_Prophylaxis_FHIRv102_CQL_v110/VaccineRequest"
* name = "Anthrax_Post_Exposure_Prophylaxis_Adults_Vaccine_Request"
* title = "Anthrax Post Exposure Prophylaxis (PEP) for Adults: Vaccine Request"
* kind = #ImmunizationRecommendation
* code
  * coding[+] = $sct#49598002 "Anthrax vaccination"
  * coding[+] = $sct#170340005 "Third anthrax vaccination"
* productCodeableConcept = $cvx#24 "Anthrax vaccine"
* dosage
  * text = "0.5mL"
  * additionalInstruction.text = "Epinephrine solution (1:1000) should be available for immediate use in the event that an anaphylactic reaction occurs."
  * doseAndRate.doseQuantity = 0.5 'mL' "mL"
  * route = $sct#34206005 "Subcutaneous route"