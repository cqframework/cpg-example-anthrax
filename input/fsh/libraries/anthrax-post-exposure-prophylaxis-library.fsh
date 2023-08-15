Instance: anthrax-post-exposure-prophylaxis-library
InstanceOf: Library
Usage: #example
* url = "http://hl7.org/fhir/uv/cpg/Library/anthrax-post-exposure-prophylaxis-library"
* identifier
  * use = #official
  * value = "Anthrax_Post_Exposure_Prophylaxis_FHIRv400"
* version = "1.1.0"
* name = "Anthrax_Post_Exposure_Prophylaxis_FHIRv400_Library"
* title = "Anthrax Post Exposure Prophylaxis (PEP) for Adults FHIRv400 Logic"
* status = #draft
* experimental = true
* type = $library-type#logic-library
* date = "2019-06-07"
* publisher = "Centers for Disease Control and Prevention"
* description = "Clinical decision support logic for Anthrax Post Exposure Prophylaxis (PEP) for Adults based on the following Centers for Disease Control and Prevention reports: \\n- Hendricks, K.A. et al., Centers for Disease Control and Prevention Expert Panel Meetings on Prevention and Treatment of Anthrax in Adults. Emerg Infect Dis, 20(20), Feb 2014. \\n - Hendricks, K.A. et al., Centers for Disease Control and Prevention Expert Panel Meetings on Prevention and Treatment of Anthrax in Adults: Technical Report. Emerg Infect Dis. 20(20), Feb 2014. \\n- Emergent BioSolutions, BioThrax Anthrax Vaccine Adsorbed (http://www.biothrax.com/whatisbiothrax/). \\n- Centers for Disease Control and Prevention, Ciprofloxacin for Post-Exposure Prophylaxis of Anthrax: Emergency Use Instructions for Healthcare Providers, 2017. \\n- Centers for Disease Control and Prevention. Doxycyxcline for Post-Exposure Prophylaxis of Anthrax: Emergency Use Instructions for Healthcare Providers, 2017. \\n- Public Health Information Network Vocabulary Access and Distribution System (PHIN VADS), PHVS_SignsSymptoms_Anthrax (OID 2.16.840.1.114222.4.11.3212), 2009. \\n- Meanye-Delman D et al., Special Considerations for Prophylaxis for and Treatment of Anthrax in Pregnant and Postpartum Women, Emerg Infect Dis, 20(2), 2014. \\n- Meanye-Delman D et al., Special Considerations for Prophylaxis for and Treatment of Anthrax in Pregnant and Postpartum Women: Technical Report, Emerg Infect Dis, 20(2), 2014. \\n- Wright, J.G et al., Use of Anthrax Vaccine in the United States: Recommendations of the Advisory Committee on Immunization Practices (ACIP), 2009, Morbidity and Mortality Weeklly Report, July 23, 2010 / 59(RR06); 1-30."
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
* relatedArtifact[0]
  * type = #depends-on
  * resource = "Library/FHIRv400/CDC_Common_Logic_FHIRv400"
  * url = "Library/FHIRv400/CDC_Common_Logic_FHIRv400.json"
  * display = "CDS_Connect_Commons_for_FHIRv400_Library"
* relatedArtifact[+]
  * type = #depends-on
  * resource = "Library/FHIRv400/FHIRHelpers_v400_Library"
  * url = "Library/FHIRv400/FHIRHelpers_v400_Library.json"
  * display = "FHIRHelpers_v400_Library"
* relatedArtifact[+]
  * type = #depends-on
  * resource = "Library/FHIRv400/FHIRv400_Model_Definition"
  * url = "Library/FHIRv400/FHIRv400_Model_Definition.json"
  * display = "FHIRv400_Model_Definition"
* parameter[0]
  * name = #Exposure_Look_Back_Period
  * use = #in
  * min = 60
  * max = "60"
  * type = #integer
* parameter[+]
  * name = #Spacing_Between_Vaccine_Doses
  * use = #in
  * min = 2
  * max = "2"
  * type = #integer
* content.id = "ig-loader-Anthrax_Post_Exposure_Prophylaxis_FHIRv400.cql"