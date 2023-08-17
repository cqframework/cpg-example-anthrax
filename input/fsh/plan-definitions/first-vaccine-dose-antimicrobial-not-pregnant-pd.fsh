Instance: first-vaccine-dose-antimicrobial-not-pregnant-pd
InstanceOf: PlanDefinition
Usage: #example
Title: "First vaccine antimicrobial not pregnant"
* insert PlanDefinitionMetadata(first-vaccine-dose-antimicrobial-not-pregnant-pd)
* insert UseContext
* identifier.value = "Anthrax_Post_Exposure_Prophylaxis_FHIRv102_CQL_v110/OrderSet"
* name = "Anthrax_Post_Exposure_Prophylaxis_Adults"
* type
  * coding[+] = $plan-definition-type#eca-rule "ECA Rule"
  * coding[+] = $plan-definition-type#order-set "Order Set"
* action
  * title = "Anthrax Post Exposure Prophylaxis 2"
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
    * title = "Anthrax Vaccination - 1st dose"
    * type = $action-type#create "Create"
    * definitionCanonical = "#VaccineRequest"
* contained[+] = CiprofloxacinRequest
* contained[+] = DoxycyclineRequest
* contained[+] = LevofloxacinRequest
* contained[+] = MoxifloxacinRequest
* contained[+] = ClindamycinRequest
* contained[+] = VaccineRequest