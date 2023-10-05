Profile: SubstanceDefinitionTest1
Parent: SubstanceDefinition
Id: SubstanceDefinition-test1
Title: "SubstanceDefinition (example fo adoption of rules set)"
Description: """This profile specified how the SubstanceDefinition is returned (as contained resource) by the WHO-UMC PhP HL7 FHIR Service"""
* insert SubstanceDefinitionCommon
* identifier 0..0

Profile: SubstanceDefinitionTest2
Parent: SubstanceDefinition
Id: SubstanceDefinition-test2
Title: "SubstanceDefinition (example fo adoption of rules set)"
Description: """This profile specified how the SubstanceDefinition is returned (as contained resource) by the WHO-UMC PhP HL7 FHIR Service"""
* insert SubstanceDefinitionCommon
* identifier 1..*


RuleSet: SubstanceDefinitionCommon

* insert SetFmmandStatusRule ( 0, draft )
* id 1..
* text 1.. 
* identifier.system = "http://www.who-umc.org/gsrs"
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