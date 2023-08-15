Instance: cds-connect-commons-library
InstanceOf: Library
Usage: #example
* url = "http://hl7.org/fhir/uv/cpg/Library/cds-connect-commons-library"
* identifier
  * use = #official
  * value = "CDS_Connect_Commons_for_FHIRv400"
* version = "1.3.2"
* name = "CDS_Connect_Commons_for_FHIRv400_Library"
* title = "CDS Connect Commons for FHIRv400"
* status = #draft
* experimental = true
* type = $library-type#logic-library
* date = "2017-08-09"
* description = "A library containing common methods used by CDS Connect-developed artifacts"
* relatedArtifact[0]
  * type = #depends-on
  * resource = "Library/FHIRHelpers_v400_Library"
* relatedArtifact[+]
  * type = #depends-on
  * resource = "Library/FHIRv400_Model_Definition"
* content.id = "ig-loader-CDS_Connect_Commons_for_FHIRv400.cql"