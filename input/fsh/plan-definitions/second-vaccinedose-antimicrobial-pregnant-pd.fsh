Instance: second-vaccinedose-antimicrobial-pregnant-pd
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
    * title = "Anthrax Vaccination - 2nd dose"
    * type = $action-type#create "Create"
    * definitionCanonical = "#VaccineRequest"
* contained[0] = Inline-Instance-for-second-vaccinedose-antimicrobial-pregnant-pd-1
* contained[+] = Inline-Instance-for-second-vaccinedose-antimicrobial-pregnant-pd-2
* contained[+] = Inline-Instance-for-second-vaccinedose-antimicrobial-pregnant-pd-3
* contained[+] = Inline-Instance-for-second-vaccinedose-antimicrobial-pregnant-pd-4
* contained[+] = Inline-Instance-for-second-vaccinedose-antimicrobial-pregnant-pd-5
* contained[+] = Inline-Instance-for-second-vaccinedose-antimicrobial-pregnant-pd-6

Instance: Inline-Instance-for-second-vaccinedose-antimicrobial-pregnant-pd-1
InstanceOf: ActivityDefinition
Usage: #inline
* id = "CiprofloxacinRequest"
* url = "https://cds.ahrq.gov/cdsconnect/artifact/anthrax-post-exposure-prophylaxis"
* identifier.value = "Anthrax_Post_Exposure_Prophylaxis_FHIRv102_CQL_v110/CiprofloxacinRequest"
* version = "1.1.0"
* name = "Anthrax_Post_Exposure_Prophylaxis_Adults_Ciprofloxacin_Request"
* title = "Anthrax Post Exposure Prophylaxis (PEP) for Adults: Ciprofloxacin Request"
* status = #draft
* experimental = true
* date = "2019-06-07"
* publisher = "Centers for Disease Control and Prevention"
* description = "In 2009, the US Advisory Committee on Immunization Practices recommended in addition to antimicrobial therapy, a 3-dose series of Anthrax Vaccine Adsorbed (AVA) BioThrax (Emergent BioSolutions Inc., Rockville, MD, USA) for long-term protection after exposure to anthrax  in individuals without any previous vaccine. After exposure to aerosolized B. anthracis spores, antimicrobial therapy should be initiated as soon as possible. Ideally, the first dose of vaccine should be administered within 10 days. ACIP recommends a post exposure regimen of 60 days of appropriate antimicrobial prophylaxis (covered previously) combined with 3 subcutaneous doses of AVA (administered at 0, 2, and 4 weeks post exposure) as the most effective protection against inhalation anthrax for previously unvaccinated persons aged ≥18 years who have been exposed to aerosolized B. anthracis spores. In general, the peak serologic response to anthrax vaccine occurs 10–14 days after the third dose. (Wright, J.G et al., Morbidity and Mortality Weekly Report, July 23, 2010 / 59(RR06); 1-30). Additionally, the Advisory Committee on Immunization Practices subsequently reviewed all safety data available as of March 2008, including the final results of a retrospective study, and concluded that AVA is safe to administer to anthrax-exposed women during pregnancy. In the setting of an anthrax event that poses a high risk for exposure to aerosolized B. anthracis spores, pregnancy is neither a precaution nor a contraindication to vaccination. Pregnant women at risk for inhalation anthrax should receive AVA and antimicrobial drug therapy regardless of pregnancy trimester (Meanye-Delman D et al., Emerg Infect Dis, 20(2), 2014)."
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
* kind = #MedicationRequest
* productCodeableConcept = $rxnorm#309309 "Ciprofloxacin 500 MG Oral Tablet"
  * text = "FIRST CHOICE: Ciprofloxacin 500 MG Oral Tablet"
* quantity = 120 http://terminology.hl7.org/CodeSystem/v3-orderableDrugForm#ORTAB
* dosage
  * text = "One every 12 hours for 60 days"
  * additionalInstruction[0].text = "Pregnant women at risk for inhalation anthrax should receive antimicrobial drug therapy regardless of pregnancy trimester."
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

Instance: Inline-Instance-for-second-vaccinedose-antimicrobial-pregnant-pd-2
InstanceOf: ActivityDefinition
Usage: #inline
* id = "DoxycyclineRequest"
* url = "https://cds.ahrq.gov/cdsconnect/artifact/anthrax-post-exposure-prophylaxis"
* identifier.value = "Anthrax_Post_Exposure_Prophylaxis_FHIRv102_CQL_v110/DoxycyclineRequest"
* version = "1.1.0"
* name = "Anthrax_Post_Exposure_Prophylaxis_Adults_Doxycycline_Request"
* title = "Anthrax Post Exposure Prophylaxis (PEP) for Adults: Doxycycline Request"
* status = #draft
* experimental = true
* date = "2019-06-07"
* publisher = "Centers for Disease Control and Prevention"
* description = "In 2009, the US Advisory Committee on Immunization Practices recommended in addition to antimicrobial therapy, a 3-dose series of Anthrax Vaccine Adsorbed (AVA) BioThrax (Emergent BioSolutions Inc., Rockville, MD, USA) for long-term protection after exposure to anthrax  in individuals without any previous vaccine. After exposure to aerosolized B. anthracis spores, antimicrobial therapy should be initiated as soon as possible. Ideally, the first dose of vaccine should be administered within 10 days. ACIP recommends a post exposure regimen of 60 days of appropriate antimicrobial prophylaxis (covered previously) combined with 3 subcutaneous doses of AVA (administered at 0, 2, and 4 weeks post exposure) as the most effective protection against inhalation anthrax for previously unvaccinated persons aged ≥18 years who have been exposed to aerosolized B. anthracis spores. In general, the peak serologic response to anthrax vaccine occurs 10–14 days after the third dose. (Wright, J.G et al., Morbidity and Mortality Weekly Report, July 23, 2010 / 59(RR06); 1-30). Additionally, the Advisory Committee on Immunization Practices subsequently reviewed all safety data available as of March 2008, including the final results of a retrospective study, and concluded that AVA is safe to administer to anthrax-exposed women during pregnancy. In the setting of an anthrax event that poses a high risk for exposure to aerosolized B. anthracis spores, pregnancy is neither a precaution nor a contraindication to vaccination. Pregnant women at risk for inhalation anthrax should receive AVA and antimicrobial drug therapy regardless of pregnancy trimester (Meanye-Delman D et al., Emerg Infect Dis, 20(2), 2014)."
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
* kind = #MedicationRequest
* productCodeableConcept = $rxnorm#1650143 "doxycycline hyclate 100 MG Oral Tablet"
  * text = "SECOND CHOICE: doxycycline hyclate 100 MG Oral Tablet"
* quantity = 120 http://terminology.hl7.org/CodeSystem/v3-orderableDrugForm#ORTAB
* dosage
  * text = "One every 12 hours for 60 days"
  * additionalInstruction[0].text = "Pregnant women at risk for inhalation anthrax should receive antimicrobial drug therapy regardless of pregnancy trimester."
  * additionalInstruction[+].text = "CAUTIONS: If patient is taking  blood thinners, oral antidiabetic drugs, seizure drugs, or any other drug that may interact and cause serious side effects, consider another antibiotic regimen."
  * additionalInstruction[+].text = "Provide patient education on medications."
  * patientInstruction = "Take with full glass of water"
  * timing.repeat
    * frequency = 1
    * period = 12
    * periodUnit = #h
  * route = $sct#26643006 "Oral Route"
  * method = $sct#421521009 "Swallow - dosing instruction imperative (qualifier value)"

Instance: Inline-Instance-for-second-vaccinedose-antimicrobial-pregnant-pd-3
InstanceOf: ActivityDefinition
Usage: #inline
* id = "LevofloxacinRequest"
* url = "https://cds.ahrq.gov/cdsconnect/artifact/anthrax-post-exposure-prophylaxis"
* identifier.value = "Anthrax_Post_Exposure_Prophylaxis_FHIRv102_CQL_v110/LevofloxacinRequest"
* version = "1.1.0"
* name = "Anthrax_Post_Exposure_Prophylaxis_Adults_Levofloxacin_Request"
* title = "Anthrax Post Exposure Prophylaxis (PEP) for Adults: Levofloxacin Request"
* status = #draft
* experimental = true
* date = "2019-06-07"
* publisher = "Centers for Disease Control and Prevention"
* description = "In 2009, the US Advisory Committee on Immunization Practices recommended in addition to antimicrobial therapy, a 3-dose series of Anthrax Vaccine Adsorbed (AVA) BioThrax (Emergent BioSolutions Inc., Rockville, MD, USA) for long-term protection after exposure to anthrax  in individuals without any previous vaccine. After exposure to aerosolized B. anthracis spores, antimicrobial therapy should be initiated as soon as possible. Ideally, the first dose of vaccine should be administered within 10 days. ACIP recommends a post exposure regimen of 60 days of appropriate antimicrobial prophylaxis (covered previously) combined with 3 subcutaneous doses of AVA (administered at 0, 2, and 4 weeks post exposure) as the most effective protection against inhalation anthrax for previously unvaccinated persons aged ≥18 years who have been exposed to aerosolized B. anthracis spores. In general, the peak serologic response to anthrax vaccine occurs 10–14 days after the third dose. (Wright, J.G et al., Morbidity and Mortality Weekly Report, July 23, 2010 / 59(RR06); 1-30). Additionally, the Advisory Committee on Immunization Practices subsequently reviewed all safety data available as of March 2008, including the final results of a retrospective study, and concluded that AVA is safe to administer to anthrax-exposed women during pregnancy. In the setting of an anthrax event that poses a high risk for exposure to aerosolized B. anthracis spores, pregnancy is neither a precaution nor a contraindication to vaccination. Pregnant women at risk for inhalation anthrax should receive AVA and antimicrobial drug therapy regardless of pregnancy trimester (Meanye-Delman D et al., Emerg Infect Dis, 20(2), 2014)."
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
* kind = #MedicationRequest
* productCodeableConcept = $rxnorm#311296 "Levofloxacin 750 MG Oral Tablet"
  * text = "Levofloxacin 750 MG Oral Tablet"
* quantity = 60 http://terminology.hl7.org/CodeSystem/v3-orderableDrugForm#ORTAB
* dosage
  * text = "One every day for 60 days"
  * additionalInstruction.text = "Pregnant women at risk for inhalation anthrax should receive antimicrobial drug therapy regardless of pregnancy trimester."
  * timing.repeat
    * frequency = 1
    * period = 1
    * periodUnit = #d
  * route = $sct#26643006 "Oral Route"
  * method = $sct#421521009 "Swallow - dosing instruction imperative (qualifier value)"

Instance: Inline-Instance-for-second-vaccinedose-antimicrobial-pregnant-pd-4
InstanceOf: ActivityDefinition
Usage: #inline
* id = "MoxifloxacinRequest"
* url = "https://cds.ahrq.gov/cdsconnect/artifact/anthrax-post-exposure-prophylaxis"
* identifier.value = "Anthrax_Post_Exposure_Prophylaxis_FHIRv102_CQL_v110/MoxifloxacinRequest"
* version = "1.1.0"
* name = "Anthrax_Post_Exposure_Prophylaxis_Adults_Moxifloxacin_Request"
* title = "Anthrax Post Exposure Prophylaxis (PEP) for Adults: Moxifloxacin Request"
* status = #draft
* experimental = true
* date = "2019-06-07"
* publisher = "Centers for Disease Control and Prevention"
* description = "In 2009, the US Advisory Committee on Immunization Practices recommended in addition to antimicrobial therapy, a 3-dose series of Anthrax Vaccine Adsorbed (AVA) BioThrax (Emergent BioSolutions Inc., Rockville, MD, USA) for long-term protection after exposure to anthrax  in individuals without any previous vaccine. After exposure to aerosolized B. anthracis spores, antimicrobial therapy should be initiated as soon as possible. Ideally, the first dose of vaccine should be administered within 10 days. ACIP recommends a post exposure regimen of 60 days of appropriate antimicrobial prophylaxis (covered previously) combined with 3 subcutaneous doses of AVA (administered at 0, 2, and 4 weeks post exposure) as the most effective protection against inhalation anthrax for previously unvaccinated persons aged ≥18 years who have been exposed to aerosolized B. anthracis spores. In general, the peak serologic response to anthrax vaccine occurs 10–14 days after the third dose. (Wright, J.G et al., Morbidity and Mortality Weekly Report, July 23, 2010 / 59(RR06); 1-30). Additionally, the Advisory Committee on Immunization Practices subsequently reviewed all safety data available as of March 2008, including the final results of a retrospective study, and concluded that AVA is safe to administer to anthrax-exposed women during pregnancy. In the setting of an anthrax event that poses a high risk for exposure to aerosolized B. anthracis spores, pregnancy is neither a precaution nor a contraindication to vaccination. Pregnant women at risk for inhalation anthrax should receive AVA and antimicrobial drug therapy regardless of pregnancy trimester (Meanye-Delman D et al., Emerg Infect Dis, 20(2), 2014)."
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
* kind = #MedicationRequest
* productCodeableConcept = $rxnorm#311787 "moxifloxacin HCl 400 MG Oral Tablet"
  * text = "moxifloxacin HCl 400 MG Oral Tablet"
* quantity = 60 http://terminology.hl7.org/CodeSystem/v3-orderableDrugForm#ORTAB
* dosage
  * text = "One every day for 60 days"
  * additionalInstruction.text = "Pregnant women at risk for inhalation anthrax should receive antimicrobial drug therapy regardless of pregnancy trimester."
  * timing.repeat
    * frequency = 1
    * period = 1
    * periodUnit = #d
  * route = $sct#26643006 "Oral Route"
  * method = $sct#421521009 "Swallow - dosing instruction imperative (qualifier value)"

Instance: Inline-Instance-for-second-vaccinedose-antimicrobial-pregnant-pd-5
InstanceOf: ActivityDefinition
Usage: #inline
* id = "ClindamycinRequest"
* url = "https://cds.ahrq.gov/cdsconnect/artifact/anthrax-post-exposure-prophylaxis"
* identifier.value = "Anthrax_Post_Exposure_Prophylaxis_FHIRv102_CQL_v110/ClindamycinRequest"
* version = "1.1.0"
* name = "Anthrax_Post_Exposure_Prophylaxis_Adults_Clindamycin_Request"
* title = "Anthrax Post Exposure Prophylaxis (PEP) for Adults: Clindamycin Request"
* status = #draft
* experimental = true
* date = "2019-06-07"
* publisher = "Centers for Disease Control and Prevention"
* description = "In 2009, the US Advisory Committee on Immunization Practices recommended in addition to antimicrobial therapy, a 3-dose series of Anthrax Vaccine Adsorbed (AVA) BioThrax (Emergent BioSolutions Inc., Rockville, MD, USA) for long-term protection after exposure to anthrax  in individuals without any previous vaccine. After exposure to aerosolized B. anthracis spores, antimicrobial therapy should be initiated as soon as possible. Ideally, the first dose of vaccine should be administered within 10 days. ACIP recommends a post exposure regimen of 60 days of appropriate antimicrobial prophylaxis (covered previously) combined with 3 subcutaneous doses of AVA (administered at 0, 2, and 4 weeks post exposure) as the most effective protection against inhalation anthrax for previously unvaccinated persons aged ≥18 years who have been exposed to aerosolized B. anthracis spores. In general, the peak serologic response to anthrax vaccine occurs 10–14 days after the third dose. (Wright, J.G et al., Morbidity and Mortality Weekly Report, July 23, 2010 / 59(RR06); 1-30). Additionally, the Advisory Committee on Immunization Practices subsequently reviewed all safety data available as of March 2008, including the final results of a retrospective study, and concluded that AVA is safe to administer to anthrax-exposed women during pregnancy. In the setting of an anthrax event that poses a high risk for exposure to aerosolized B. anthracis spores, pregnancy is neither a precaution nor a contraindication to vaccination. Pregnant women at risk for inhalation anthrax should receive AVA and antimicrobial drug therapy regardless of pregnancy trimester (Meanye-Delman D et al., Emerg Infect Dis, 20(2), 2014)."
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
* kind = #MedicationRequest
* productCodeableConcept = $rxnorm#284215 "clindamycin HCl 300 MG Oral Capsule"
  * text = "clindamycin HCl 300 MG Oral Capsule"
* quantity = 360 http://terminology.hl7.org/CodeSystem/v3-orderableDrugForm#ORTAB
* dosage
  * text = "Two tablets every 8 hours for 60 days"
  * additionalInstruction.text = "Pregnant women at risk for inhalation anthrax should receive antimicrobial drug therapy regardless of pregnancy trimester."
  * timing.repeat
    * frequency = 2
    * period = 8
    * periodUnit = #h
  * route = $sct#26643006 "Oral Route"
  * method = $sct#421521009 "Swallow - dosing instruction imperative (qualifier value)"

Instance: Inline-Instance-for-second-vaccinedose-antimicrobial-pregnant-pd-6
InstanceOf: ActivityDefinition
Usage: #inline
* id = "VaccineRequest"
* url = "https://cds.ahrq.gov/cdsconnect/artifact/anthrax-post-exposure-prophylaxis"
* identifier.value = "Anthrax_Post_Exposure_Prophylaxis_FHIRv102_CQL_v110/VaccineRequest"
* version = "1.1.0"
* name = "Anthrax_Post_Exposure_Prophylaxis_Adults_Vaccine_Request"
* title = "Anthrax Post Exposure Prophylaxis (PEP) for Adults: Vaccine Request"
* status = #draft
* experimental = true
* date = "2019-06-07"
* publisher = "Centers for Disease Control and Prevention"
* description = "In 2009, the US Advisory Committee on Immunization Practices recommended in addition to antimicrobial therapy, a 3-dose series of Anthrax Vaccine Adsorbed (AVA) BioThrax (Emergent BioSolutions Inc., Rockville, MD, USA) for long-term protection after exposure to anthrax  in individuals without any previous vaccine. After exposure to aerosolized B. anthracis spores, antimicrobial therapy should be initiated as soon as possible. Ideally, the first dose of vaccine should be administered within 10 days. ACIP recommends a post exposure regimen of 60 days of appropriate antimicrobial prophylaxis (covered previously) combined with 3 subcutaneous doses of AVA (administered at 0, 2, and 4 weeks post exposure) as the most effective protection against inhalation anthrax for previously unvaccinated persons aged ≥18 years who have been exposed to aerosolized B. anthracis spores. In general, the peak serologic response to anthrax vaccine occurs 10–14 days after the third dose. (Wright, J.G et al., Morbidity and Mortality Weekly Report, July 23, 2010 / 59(RR06); 1-30). Additionally, the Advisory Committee on Immunization Practices subsequently reviewed all safety data available as of March 2008, including the final results of a retrospective study, and concluded that AVA is safe to administer to anthrax-exposed women during pregnancy. In the setting of an anthrax event that poses a high risk for exposure to aerosolized B. anthracis spores, pregnancy is neither a precaution nor a contraindication to vaccination. Pregnant women at risk for inhalation anthrax should receive AVA and antimicrobial drug therapy regardless of pregnancy trimester (Meanye-Delman D et al., Emerg Infect Dis, 20(2), 2014)."
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
* kind = #ImmunizationRecommendation
* code
  * coding[0] = $sct#49598002 "Anthrax vaccination"
  * coding[+] = $sct#170339008 "Second anthrax vaccination"
* productCodeableConcept = $cvx#24 "Anthrax vaccine"
* dosage
  * text = "0.5mL"
  * additionalInstruction[0].text = "Pregnant women at risk for inhalation anthrax should receive the anthrax vaccine regardless of pregnancy trimester."
  * additionalInstruction[+].text = "Epinephrine solution (1:1000) should be available for immediate use in the event that an anaphylactic reaction occurs."
  * doseAndRate.doseQuantity = 0.5 'mL' "mL"
  * route = $sct#34206005 "Subcutaneous route"