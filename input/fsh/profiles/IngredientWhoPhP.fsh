Profile: IngredientWhoPhP
Parent: Ingredient
Id: Ingredient-who-php
Title: "Ingredient (WHO PhP)"
Description: """This profile specified how the Ingredient is returned (as contained resource) by the WHO-UMC PhP HL7 FHIR Service"""
* insert SetFmmandStatusRule ( 0, draft )
* identifier ^short = "An identifier or code by which the ingredient can be referenced."

* status ^short =	"draft|active|retired|unknown"

* for only Reference( AdministrableProductDefinitionWhoPhP )

* role from VsIngredientRole (example)

* allergenicIndicator ^short = "If the ingredient is a known or suspected allergen." // = false

// * manufacturer.manufacturer only Reference(OrganizationWhoPhP)

* substance
  * code from VsSubstance (example)
  * strength 
    * ^short = "The quantity of substance, per presentation, or per volume or mass, and type of quantity."
  * strength.textPresentation ^short = "Text of either the whole presentation strength or a part of it"
  * strength.textConcentration ^short = "Text of either the whole concentration strength or a part of it"
  * strength.basis ^short = "A code that indicates if the strength is, for example, based on the ingredient substance as stated or on the substance base (when the ingredient is a salt)"
  * strength.referenceStrength ^short = "Strength expressed in terms of a reference substance"
    * substance ^short = "Relevant reference substance."
    * strength[x] ^short = "Strength of the reference substance."
