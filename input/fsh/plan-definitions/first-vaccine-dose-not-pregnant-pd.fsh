Instance: first-vaccine-dose-not-pregnant-pd
InstanceOf: PlanDefinition
Usage: #example
* url = "https://cds.ahrq.gov/cdsconnect/artifact/anthrax-post-exposure-prophylaxis"
* identifier.value = "Anthrax_Post_Exposure_Prophylaxis_FHIRv102_CQL_v110/OrderSet"
* version = "1.1.0"
* name = "Anthrax_Post_Exposure_Prophylaxis_Adults"
* title = "Anthrax Post Exposure Prophylaxis (PEP) for Adults"
* status = #draft
* experimental = true
* type
  * coding[0] = $plan-definition-type#eca-rule "ECA Rule"
  * coding[+] = $plan-definition-type#order-set "Order Set"
* date = "2019-06-07"
* publisher = "Centers for Disease Control and Prevention"
* description = "Provides information for treating patients greater than or equal to 18 years old exposed to anthrax within the past 60 days, who do not have anthrax. It is divided into two parts: \\n- Part #1: For patients that may be symptomatic to flag the need to conduct a full diagnostic evaluation to rule out anthrax before proceeding with post-exposure prophylaxis (PEP) \\n- Part #2: For patients  who are  asymptomatic (not displaying signs and symptoms of anthrax), it provides recommended PEP regimen"
* purpose = "Provides clinicians with information for quickly assessing individuals exposed to anthrax unrelated to occupational exposure, for example in bioterrorism events, and provides the recommended post-exposure prophylaxis (PEP) regimen for asymptomatic patients. Includes immediate treatment with antimicrobials and vaccine and follow-up administration of subsequent vaccines to complete the recommended 3-dose vaccination series."
* usage = "Intended for use by clinicians caring for individuals ≥18 years of age in an outpatient setting."
* approvalDate = "2019-06-07"
* lastReviewDate = "2019-06-07"
* effectivePeriod.start = "2019-06-07"
* useContext[0]
  * code = $usage-context-type#age "Age Range"
  * valueRange.low.value = 18
* useContext[+]
  * code = $usage-context-type#venue "Clinical Venue"
  * valueCodeableConcept = $sct#440655000 "Outpatient environment"
* useContext[+]
  * code = $usage-context-type#focus "Clinical Focus"
  * valueCodeableConcept = $icd-10-cm#Z20.810 "Contact with and (suspected) exposure to anthrax"
* useContext[+]
  * code = $usage-context-type#focus "Clinical Focus"
  * valueCodeableConcept = $sct#170475009 "Exposure to Bacillus anthracis (event)"
* useContext[+]
  * code = $usage-context-type#focus "Clinical Focus"
  * valueCodeableConcept = $sct#84387000 "Asymptomatic (finding)"
* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* topic[0].text = "Anthrax"
* topic[+].text = "Emergency Medicine"
* topic[+].text = "Post-Exposure Prophylaxis"
* author.name = "Alliance to Modernize Healthcare FFRDC"
* endorser.name = "Centers for Disease Control and Prevention"
* contact.telecom
  * system = #url
  * value = "https://cds.ahrq.gov/cdsconnect/artifact/anthrax-post-exposure-prophylaxis"
  * use = #work
* copyright = "(C) 2018 The MITRE Corporation. All Rights Reserved."
* library = "http://hl7.org/fhir/uv/cpg/Library/anthrax-post-exposure-prophylaxis-library"
* action
  * title = "Anthrax Post Exposure Prophylaxis"
  * groupingBehavior = #logical-group
  * selectionBehavior = #any
  * trigger[0]
    * type = #data-added
    * data
      * type = #Condition
      * codeFilter
        * path = "code"
        * code[0] = $icd-10-cm#Z20.810 "Contact with and (suspected) exposure to anthrax"
        * code[+] = $sct#170475009 "Exposure to Bacillus anthracis (event)"
  * trigger[+]
    * type = #data-added
    * data
      * type = #Observation
      * codeFilter
        * path = "code"
        * code[0] = $icd-10-cm#Z20.810 "Contact with and (suspected) exposure to anthrax"
        * code[+] = $sct#170475009 "Exposure to Bacillus anthracis (event)"
        * code[+] = $sct#84387000 "Asymptomatic (finding)"
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql
      * expression = "GenerateOrderSet"
  * action[0]
    * title = "Antimicrobial medications for anthrax post-exposure prophylaxis"
    * groupingBehavior = #visual-group
    * selectionBehavior = #at-most-one
    * action[0]
      * title = "First line antimicrobial medications for anthrax post-exposure prophylaxis"
      * groupingBehavior = #visual-group
      * selectionBehavior = #at-most-one
      * action[0]
        * type = $action-type#create "Create"
        * definitionCanonical = "#CiprofloxacinRequest"
      * action[+]
        * type = $action-type#create "Create"
        * definitionCanonical = "#DoxycyclineRequest"
    * action[+]
      * title = "Second line antimicrobial medications for anthrax post-exposure prophylaxis"
      * groupingBehavior = #visual-group
      * selectionBehavior = #at-most-one
      * action[0]
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
* contained[0] = CiprofloxacinRequest
* contained[+] = DoxycyclineRequest
* contained[+] = LevofloxacinRequest
* contained[+] = MoxifloxacinRequest
* contained[+] = ClindamycinRequest
* contained[+] = VaccineRequest