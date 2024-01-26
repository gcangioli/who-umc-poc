//*******************************
// Request model
//*******************************
Profile: SubstanceDefinitionRequest
Parent: SubstanceDefinition
Id: SubstanceDefinition-req
Title: "SubstanceDefinition for request (example fo adoption of rules set)"
Description: """This profile specified how the SubstanceDefinition is used in request (for a new GSID) (as contained resource) by the WHO-UMC IDMP FHIR Service"""
* insert SubstanceDefinitionCommon
* id 0..0
* identifier 0..0

//*******************************
// Publish model
//*******************************
Profile: SubstanceDefinitionPublished
Parent: SubstanceDefinition
Id: SubstanceDefinition-pub
Title: "SubstanceDefinition for publication (example fo adoption of rules set)"
Description: """This profile specified how the SubstanceDefinition is published by the WHO-UMC IDMP FHIR Service"""
* insert SubstanceDefinitionCommon
* id 1..1
* identifier 1..1

//*******************************
// Common
//*******************************
RuleSet: SubstanceDefinitionCommon

* insert SetFmmandStatusRule ( 0, draft )
* text 1.. 
* identifier.system = $gsid
* status 1..
* status ^short =	"draft|active|retired|unknown"
* domain 1..

/* * insert NotUsed(allergenicIndicator) */

* code.code
  * coding 1..*
    * ^slicing.discriminator[+].type = #pattern
    * ^slicing.discriminator[=].path = "$this.system"
    * ^slicing.ordered = false
    * ^slicing.rules = #open
    * ^definition = """Alternatives codes used for identifying this substance. For example UNII,CAS,EU-SRS..."""
    * system 1..
    * code 1..
  // UNII
  * coding contains unii ..1 
  * coding[unii]
    * system = $unii
    * ^short = "UNII"
    * ^definition = """FDA Unique identifer for subtances: UNII"""  
  // CAS
  * coding contains cas ..1 
  * coding[cas]
    * system = $cas
    * ^short = "CAS"
    * ^definition = """CAS subtances code"""
  // EU-SRS
  * coding contains eusrs ..1 
  * coding[eusrs]
    * system = $eusrs
    * ^short = "EU-SRS"
    * ^definition = """European SRS"""
  * text 1..
* name 1..1
  * status 1..
    * ^short = "name status"
  * preferred 1..
  * language 1..
  * language from $VS-language

// NOT USED ELEMENTS

* insert NotUsed(version)
* insert NotUsed(classification)
* insert NotUsed(grade)
* insert NotUsed(description)
* insert NotUsed(informationSource)

* insert NotUsed(note)
* insert NotUsed(manufacturer)
* insert NotUsed(supplier)
* insert NotUsed(moiety)

* insert NotUsed(property)
* insert NotUsed(molecularWeight)
* insert NotUsed(structure)
* insert NotUsed(relationship)
* insert NotUsed(sourceMaterial)