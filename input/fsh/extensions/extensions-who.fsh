Extension: ParentPhp
Id:   parent-phpid
Title: "Parent PhP"
Description: "This extension applies to the ADP resource and is used to refer the parent ADPs representing the upper level PhP."
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* ^context[+].type = #element
* ^context[=].expression = "AdministrableProductDefinition"

// CHECK THE URL !!!
* ^url = "http://www.who-umc.org/phpid/StructureDefinition/parent-phpid"
* value[x] only Reference (AdministrableProductDefinitionWhoPhP)
* valueReference.identifier 1..
  * system = "http://www.who-umc.org/phpid"
  * system 1..
