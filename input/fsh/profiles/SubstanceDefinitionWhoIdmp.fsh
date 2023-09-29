Profile: SubstanceDefinitionWhoIdmp
Parent: SubstanceDefinition
Id: SubstanceDefinition-who-idmp
Title: "Substance (WHO IDMP)"
Description: """This profile specified the SubstanceDefinition used to represent the WHO-UMC Global Substance Identifier"""
* insert SetFmmandStatusRule ( 0, draft )
* id 1..1
  * ^short "GSID"
  * ^definition =  "Global Substance Identifier, always same as Identifier"

* identifier ^short = "An identifier or code by which the substance can be referenced."
* identifier 1..1
  * system 1..1
  * value 1..1

* status 1..1 
  * ^short =	"draft|active|retired|unknown"

* name 1..