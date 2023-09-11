Extension: ParentPhp
Id:   parent-php
Title: "Parent PhP"
Description: "This extension applies to the ADP resource and is used to refer the parent ADPs representing the upper level PhP."
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* ^context[+].type = #element
* ^context[=].expression = "AdministrableProductDefinition"

// THE URL SHALL  BE CHANGED !!!
* ^url = "https://umc-ext-dev-phponfhirdemo-systemtest-rg01-webapp.azurewebsites.net/StructureDefinition/ParentPhPId"
* value[x] only Reference (AdministrableProductDefinitionWhoPhP)
* valueReference.identifier 1..
  * system = "http://www.who-umc.org/phpid"
