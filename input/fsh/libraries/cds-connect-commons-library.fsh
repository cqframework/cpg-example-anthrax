Instance: cds-connect-commons-library
InstanceOf: Library
Usage: #example
Title: "CDS Connect Commons for FHIRv400"
* insert LibraryMetadata(cds-connect-commons-library)
* identifier
  * use = #official
  * value = "CDS_Connect_Commons_for_FHIRv400"
* version = "1.3.2"
* name = "CDS_Connect_Commons_for_FHIRv400_Library"
* type = $library-type#logic-library
* description = "A library containing common methods used by CDS Connect-developed artifacts"
// * relatedArtifact[0]
//   * type = #depends-on
//   * resource = Canonical(FHIRHelpers_v400_Library)
// * relatedArtifact[+]
//   * type = #depends-on
//   * resource = Canonical(FHIRv400_Model_Definition)
* content.id = "ig-loader-CDS_Connect_Commons_for_FHIRv400.cql"