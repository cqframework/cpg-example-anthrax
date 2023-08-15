Instance: cdc-common-logic-library
InstanceOf: Library
Usage: #example
Title: "CDC Common Logic for FHIRv400"
* insert LibraryMetadata(cdc-common-logic-library)
* identifier
  * use = #official
  * value = "CDC_Common_Logic_FHIRv400"
* version = "1.0.0"
* name = "CDC_Common_Logic_FHIRv400_Library"
* type = $library-type#logic-library
* description = "A library containing common logic used by CDC CDS artifacts"
* approvalDate = "2019-06-07"
// * relatedArtifact[0]
//   * type = #depends-on
//   * resource = Canonical(FHIRHelpers_v400_Library)
// * relatedArtifact[+]
//   * type = #depends-on
//   * resource = Canonical(FHIRv400_Model_Definition)
* content.id = "ig-loader-CDC_Common_Logic_FHIRv400.cql"