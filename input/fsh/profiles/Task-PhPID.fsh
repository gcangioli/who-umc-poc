Profile: TaskGeneratePhPIDWhoPhP
Parent: Task
Id: Task-who-php-phpid
Title: "Task PhPID generation"
Description: """This profile specified how to use the Task resource to request and track the generation of a PhPID by using the WHO-UMC IDMP FHIR Service"""
* insert SetFmmandStatusRule ( 0, draft )

// ADD INVARIANTS FOR INPUT AND OUTPUT

* identifier 0..
  * ^short = "Identifier assigned by the requestor to track the request."
* instantiatesUri ^short = "Link to the definiton of the task"
* basedOn // check if this should be sued for tracking the request or if we should say not used
* status 1..
  * ^short =	"Status of the task"
* businessStatus ^short = "business-specific state" // check if useful
* intent = http://hl7.org/fhir/request-intent#proposal // CHECK ISìF TI IS A FIXED VALUE OR A VALUE SET BINDING
* priority ^short = "Task priority" // check if this is needed
* code 0.. // GENERATE A CODE
  * ^short = "PhPID Generation"
* authoredOn 1..
* lastModified 1..
* requester only Reference(AuthorizedOrg)
* requester 0..
* contained 3..
* input ^slicing.discriminator.type = #pattern
* input ^slicing.discriminator.path = "type"
* input ^slicing.rules = #open
* input ^slicing.description = "Slice based on the input.type pattern"

* input contains MP 1..1 MS and ORG 1..1 MS and ING 1..* MS
* input[MP].type = TaskInputTypes#mpd-request-resource
* input[MP].value[x] only Reference
* input[MP].valueReference only Reference (MedicinalProductDefinitionWhoPhPRequest)

* input[ORG].type = TaskInputTypes#organization-request-resource
* input[ORG].value[x] only Reference
* input[ORG].valueReference only Reference (Organization)

* input[ING].type = TaskInputTypes#ingredient-request-resource
* input[ING].value[x] only Reference
* input[ING].valueReference only Reference (Ingredient)


//* input 3..3
  //* type = http://hl7.org/fhir/fhir-types#MedicinalProductDefinition
//  * type from VsPhPIDTaskInputTypes (required)
//  * value[x] only Reference
//  * valueReference only Reference (MedicinalProductDefinitionWhoPhPRequest or Ingredient or Organization)
* output 
  * type = http://hl7.org/fhir/fhir-types#AdministrableProductDefinition 
  * value[x] only Reference
  * valueReference only Reference (AdministrableProductDefinitionWhoPhP)


* insert NotUsed(encounter)
* insert NotUsed(insurance)
* insert NotUsed(restriction)