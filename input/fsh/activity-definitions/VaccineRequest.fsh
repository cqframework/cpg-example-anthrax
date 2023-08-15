Instance: VaccineRequest
InstanceOf: ActivityDefinition
Usage: #example
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
  * coding[+] = $sct#170338000 "First anthrax vaccination"
* productCodeableConcept = $cvx#24 "Anthrax vaccine"
* dosage
  * text = "0.5mL"
  * additionalInstruction.text = "Epinephrine solution (1:1000) should be available for immediate use in the event that an anaphylactic reaction occurs."
  * doseAndRate.doseQuantity = 0.5 'mL' "mL"
  * route = $sct#34206005 "Subcutaneous route"