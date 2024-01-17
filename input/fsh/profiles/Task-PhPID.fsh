Profile: TaskGeneratePhPIDWhoPhP
Parent: Task
Id: Task-phpid-who-php
Title: "Task PhPID generation"
Description: """This profile specified how to use the Task resource to request and track the generation of a PhPID by using the WHO-UMC IDMP FHIR Service"""
* insert SetFmmandStatusRule ( 0, draft )
// * identifier ^short = "An identifier or code by which the ingredient can be referenced."

// ADD INVARIANTS FOR INPUT AND OUTPUT

* identifier 1..
  * ^short = "Identifier assigned by the requestor to track the request."
* instantiatesUri ^short = "Link to the definiton of the task"
* basedOn // check if this should be sued for tracking the request or if we should say not used
* status 1..
  * ^short =	"Status of the task"
* businessStatus ^short = "business-specific state" // check if useful
* intent = http://hl7.org/fhir/request-intent#proposal // CHECK ISìF TI IS A FIXED VALUE OR A VALUE SET BINDING
* priority ^short = "Task priority" // check if this is needed
* code 1.. // GENERATE A CODE
  * ^short = "PhPID Generation"
* authoredOn 1..
* lastModified 1..
* requester only Reference(AuthorizedOrg)
* requester 1..
* input 
  * type = http://hl7.org/fhir/fhir-types#MedicinalProductDefinition // check if a fixed value is enough (there are several types of SDs)
  * value[x] only Reference
  * valueReference only Reference (MedicinalProductDefinitionWhoPhPRequest)
* output 
  * type = http://hl7.org/fhir/fhir-types#SubstanceDefinition // check if a fixed value is enough (there are several types of SDs)
  * value[x] only Reference
  * valueReference only Reference (AdministrableProductDefinitionWhoPhP)


* insert NotUsed(encounter)
* insert NotUsed(insurance)
* insert NotUsed(restriction)