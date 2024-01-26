/*Instance: parent-php
InstanceOf: SearchParameter
Usage: #definition
* url = "http://who-umc.org/fhir/php/SearchParameter/parent-php"
* name = "ParentPhp"
* title = "Parent PhPID"
* status = #draft
* experimental = true
* description = """This search parameter allows to filter PhPs based on 'parent' PhP relying on the 'parent-phpid'extension"""
* purpose = "Search PhPs based on 'parent' PhP. It allows for example to find all level 4 PhPIDs given a specific level 2 PhPID"
* code = #parent-php
* base = #AdministrableProductDefinition
* type = #reference
* expression = "AdministrableProductDefinition.extension('$parent-php-extension').value"
* processingMode = #normal*/