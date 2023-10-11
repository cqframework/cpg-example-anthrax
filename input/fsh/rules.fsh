RuleSet: PlanDefinitionMetadata(id)
* description = "Provides information for treating patients greater than or equal to 18 years old exposed to anthrax within the past 60 days, who do not have anthrax. It is divided into two parts: \\n- Part #1: For patients that may be symptomatic to flag the need to conduct a full diagnostic evaluation to rule out anthrax before proceeding with post-exposure prophylaxis (PEP) \\n- Part #2: For patients  who are  asymptomatic (not displaying signs and symptoms of anthrax), it provides recommended PEP regimen"
* purpose = "Provides clinicians with information for quickly assessing individuals exposed to anthrax unrelated to occupational exposure, for example in bioterrorism events, and provides the recommended post-exposure prophylaxis (PEP) regimen for asymptomatic patients. Includes immediate treatment with antimicrobials and vaccine and follow-up administration of subsequent vaccines to complete the recommended 3-dose vaccination series."
* usage = "Intended for use by clinicians caring for individuals ≥18 years of age in an outpatient setting."
* approvalDate = "2019-06-07"
* lastReviewDate = "2019-06-07"
* effectivePeriod.start = "2019-06-07"
* topic[0].text = "Anthrax"
* topic[+].text = "Emergency Medicine"
* topic[+].text = "Post-Exposure Prophylaxis"
* author.name = "Alliance to Modernize Healthcare FFRDC"
* endorser.name = "Centers for Disease Control and Prevention"
* experimental = true
* status = #draft
* url = "http://hl7.org/fhir/uv/cpg/anthrax/PlanDefinition/{id}"
* library = Canonical(anthrax-post-exposure-prophylaxis-library)

RuleSet: RequestMetadata(id)
* description = "In 2009, the US Advisory Committee on Immunization Practices recommended in addition to antimicrobial therapy, a 3-dose series of Anthrax Vaccine Adsorbed (AVA) BioThrax (Emergent BioSolutions Inc., Rockville, MD, USA) for long-term protection after exposure to anthrax  in individuals without any previous vaccine. After exposure to aerosolized B. anthracis spores, antimicrobial therapy should be initiated as soon as possible. Ideally, the first dose of vaccine should be administered within 10 days. ACIP recommends a post exposure regimen of 60 days of appropriate antimicrobial prophylaxis (covered previously) combined with 3 subcutaneous doses of AVA (administered at 0, 2, and 4 weeks post exposure) as the most effective protection against inhalation anthrax for previously unvaccinated persons aged ≥18 years who have been exposed to aerosolized B. anthracis spores. In general, the peak serologic response to anthrax vaccine occurs 10–14 days after the third dose. (Wright, J.G et al., Morbidity and Mortality Weekly Report, July 23, 2010 / 59(RR06); 1-30). Additionally, the Advisory Committee on Immunization Practices subsequently reviewed all safety data available as of March 2008, including the final results of a retrospective study, and concluded that AVA is safe to administer to anthrax-exposed women during pregnancy. In the setting of an anthrax event that poses a high risk for exposure to aerosolized B. anthracis spores, pregnancy is neither a precaution nor a contraindication to vaccination. Pregnant women at risk for inhalation anthrax should receive AVA and antimicrobial drug therapy regardless of pregnancy trimester (Meanye-Delman D et al., Emerg Infect Dis, 20(2), 2014)."
* purpose = "Provides clinicians with information for quickly assessing individuals exposed to anthrax unrelated to occupational exposure, for example in bioterrorism events, and provides the recommended post-exposure prophylaxis (PEP) regimen for asymptomatic patients. Includes immediate treatment with antimicrobials and vaccine and follow-up administration of subsequent vaccines to complete the recommended 3-dose vaccination series."
* usage = "Intended for use by clinicians caring for individuals ≥18 years of age in an outpatient setting."
* approvalDate = "2019-06-07"
* lastReviewDate = "2019-06-07"
* effectivePeriod.start = "2019-06-07"
* topic[0].text = "Anthrax"
* topic[+].text = "Emergency Medicine"
* topic[+].text = "Post-Exposure Prophylaxis"
* author.name = "Alliance to Modernize Healthcare FFRDC"
* endorser.name = "Centers for Disease Control and Prevention"
* experimental = true
* status = #draft
* url = "http://hl7.org/fhir/uv/cpg/anthrax/ActivityDefinition/{id}"

RuleSet: UseContext
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

RuleSet: LibraryMetadata(id)
* topic[0].text = "Anthrax"
* topic[+].text = "Emergency Medicine"
* topic[+].text = "Post-Exposure Prophylaxis"
* author.name = "Alliance to Modernize Healthcare FFRDC"
* endorser.name = "Centers for Disease Control and Prevention"
* experimental = true
* status = #draft
* url = "http://hl7.org/fhir/uv/cpg/anthrax/Library/{id}"

RuleSet: AntrhaxExposureDescriptionAndUsage
* description = "Clinical decision support logic for Anthrax Post Exposure Prophylaxis (PEP) for Adults based on the following Centers for Disease Control and Prevention reports: \\n- Hendricks, K.A. et al., Centers for Disease Control and Prevention Expert Panel Meetings on Prevention and Treatment of Anthrax in Adults. Emerg Infect Dis, 20(20), Feb 2014. \\n - Hendricks, K.A. et al., Centers for Disease Control and Prevention Expert Panel Meetings on Prevention and Treatment of Anthrax in Adults: Technical Report. Emerg Infect Dis. 20(20), Feb 2014. \\n- Emergent BioSolutions, BioThrax Anthrax Vaccine Adsorbed (http://www.biothrax.com/whatisbiothrax/). \\n- Centers for Disease Control and Prevention, Ciprofloxacin for Post-Exposure Prophylaxis of Anthrax: Emergency Use Instructions for Healthcare Providers, 2017. \\n- Centers for Disease Control and Prevention. Doxycyxcline for Post-Exposure Prophylaxis of Anthrax: Emergency Use Instructions for Healthcare Providers, 2017. \\n- Public Health Information Network Vocabulary Access and Distribution System (PHIN VADS), PHVS_SignsSymptoms_Anthrax (OID 2.16.840.1.114222.4.11.3212), 2009. \\n- Meanye-Delman D et al., Special Considerations for Prophylaxis for and Treatment of Anthrax in Pregnant and Postpartum Women, Emerg Infect Dis, 20(2), 2014. \\n- Meanye-Delman D et al., Special Considerations for Prophylaxis for and Treatment of Anthrax in Pregnant and Postpartum Women: Technical Report, Emerg Infect Dis, 20(2), 2014. \\n- Wright, J.G et al., Use of Anthrax Vaccine in the United States: Recommendations of the Advisory Committee on Immunization Practices (ACIP), 2009, Morbidity and Mortality Weeklly Report, July 23, 2010 / 59(RR06); 1-30."
* purpose = "Provides clinicians with information for quickly assessing individuals exposed to anthrax unrelated to occupational exposure, for example in bioterrorism events, and provides the recommended post-exposure prophylaxis (PEP) regimen for asymptomatic patients. Includes immediate treatment with antimicrobials and vaccine and follow-up administration of subsequent vaccines to complete the recommended 3-dose vaccination series."
* usage = "Intended for use by clinicians caring for individuals ≥18 years of age in an outpatient setting."

RuleSet: FHIRRelatedLibraries
* relatedArtifact[+]
  * type = #depends-on
  * resource = $fhir-helpers
* relatedArtifact[+]
  * type = #depends-on
  * resource = $model-definition

