Instance: anthrax-post-exposure-prophylaxis-library
InstanceOf: Library
Usage: #definition
Title: "Anthrax Post Exposure Prophylaxis (PEP) for Adults FHIRv400 Logic"
* insert LibraryMetadata(anthrax-post-exposure-prophylaxis-library)
* insert AntrhaxExposureDescriptionAndUsage
* insert UseContext
* insert FHIRRelatedLibraries
* identifier
  * use = #official
  * value = "Anthrax_Post_Exposure_Prophylaxis_FHIRv400"
* name = "Anthrax_Post_Exposure_Prophylaxis_FHIRv400_Library"
* type = $library-type#logic-library
* relatedArtifact[+]
  * type = #depends-on
  * resource = Canonical(cdc-common-logic-library)
  * url = Canonical(cdc-common-logic-library)
  * display = "CDS_Connect_Commons_for_FHIRv400_Library"
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