Profile: AdministrableProductDefinitionWhoPhP
Parent: AdministrableProductDefinition
Id: AdministrableProductDefinition-who-php
Title: "AdministrableProductDefinition (WHO PhP)"
Description: """This profile specified how the AdministrableProductDefinition is returned (as contained resource) by the WHO-UMC PhP HL7 FHIR Service"""

* insert SetFmmandStatusRule ( 0, draft )
* id 1..
  * ^short = "PhPID"
  * ^definition =  "This is always values with the PhPID"
* identifier 1..1
  * type 1..1 // add binding
  * system 1..1
  * value 1..1


// ADD EXTENSIONS
// ADD CONTAINED

* status 1..1 
  * ^short = "draft | active | retired |unknown"

* formOf 1.. 
// ADD DATA-ABSENT-REASON EXTENSION
//only Reference(MedicinalProductDefinitionWhoPhP)

* administrableDoseForm from VsAdministrableDoseForm (example)

* unitOfPresentation from VsUnitofPresentation (example)

// * producedFrom only Reference(ManufacturedItemDefinitionWhoPhP)

* routeOfAdministration 
  * code from VsRouteOfAdministration (example)

// * insert PropertyRulesSet