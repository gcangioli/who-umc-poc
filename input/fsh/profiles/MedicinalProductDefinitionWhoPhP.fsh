Profile: MedicinalProductDefinitionWhoPhPRequest
Parent: MedicinalProductDefinition
Id: MedicinalProductDefinition-who-php-req
Title: "MedicinalProductDefinition for request of a PhPID"
Description: """This profile specified how the MedicinalProductDefinition is used in request (for a new PhPID) (as contained resource) by the WHO-UMC IDMP FHIR Service"""
* insert MedicinalProductDefinitionCommon
* contained 1..
* contained only IngredientWhoPhP
* contact 1..1
  * type ^short = "Allows the contact to be classified, for example QPPV, Pharmacovigilance Enquiry Information."
  * contact ^short = "A specific contact, person (in a role), or an organization for this product"

Profile: MedicinalProductDefinitionWhoPhP
Parent: MedicinalProductDefinition
Id: MedicinalProductDefinition-who-php-pub
Title: "MedicinalProductDefinition for publication (example fo adoption of rules set)"
Description: """This profile specified how the MedicinalProductDefinition is published by the WHO-UMC IDMP FHIR Service representing the WHODrug dictionary"""
* insert MedicinalProductDefinitionCommon
* insert NotUsed(contained)
* contact 0..*
  * type ^short = "Allows the contact to be classified, for example QPPV, Pharmacovigilance Enquiry Information."
  * contact ^short = "A specific contact, person (in a role), or an organization for this product"

RuleSet: MedicinalProductDefinitionCommon
* insert SetFmmandStatusRule ( 0, draft )
* id 1..
* identifier 1..
  * system 1..
  * system from VsMpIdSystem (extensible)
  * value 1..

// add binding
* type ^short = "Regulatory type, e.g. Investigational or Authorized."
* domain ^short = "If this medicine applies to human or veterinary uses."
* domain from $VS-medicinal-product-domain (required)

// * version ^short = "A business identifier relating to a specific version of the product."

* status ^short = "The status within the lifecycle of this product record."
// * statusDate ^short = "The date at which this status became applicable." 
* insert NotUsed(statusDate)

// * description ^short = "General description of the medicinal product referred by the ePI"
* insert NotUsed(description)

* combinedPharmaceuticalDoseForm from VsDoseForm (example)

* route from VsRouteOfAdministration (example)

// * indication ^short = "Narrative text of the authorized indication(s) for this product."

* insert NotUsed(indication)

// * legalStatusOfSupply ^short = "The legal status of supply of the medicinal product as classified by the regulator."

* insert NotUsed(legalStatusOfSupply)

// * additionalMonitoringIndicator ^short = "Whether the Medicinal Product is subject to additional monitoring for regulatory reasons."

* insert NotUsed(additionalMonitoringIndicator)

//  * specialMeasures ^short = "Whether the Medicinal Product is subject to special measures for regulatory reasons."

* insert NotUsed(specialMeasures)

// * pediatricUseIndicator ^short = "If authorised for pediatric use"

* insert NotUsed(pediatricUseIndicator)

* classification from VsAtcClassification (example)
  * ^short = "Allows the product to be classified by various systems (e.g. ATC)"

* insert NotUsed(pediatricUseIndicator)

* marketingStatus 0.. //not used now?should it be mandatory??
  * country  from VsCountry (preferred)
  * dateRange ^short = "The date when the Medicinal Product is placed on the market by the Marketing Authorization Holder"
  * status ^short = "Status of the marketing of the medicinal product."

// * packagedMedicinalProduct ^short = "Package type for the product." 

* insert NotUsed(packagedMedicinalProduct)

* name 1..
  * productName 1..1
  * productName ^short = "The full product name."
  // * type ^short = "Type of product name, such as rINN, Proprietary, Non-Proprietary"
  * insert NotUsed(type)

 /*  * part 0..*
    * part ^short = "A fragment of a product name."
    * type ^short = "Type for this part of the name (e.g. strength part)"
  */ 
  * usage 1..* 
    * country ^short = "Country where this name applies"
    * jurisdiction ^short = "Jurisdiction where this name applies"
    * language ^short = "Language for this name"
