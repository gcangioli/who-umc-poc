Instance: PhPOnFHIR
InstanceOf: CapabilityStatement
Usage: #definition
* name = "PhPIdDemo"
* title = "Demo API to explore PhPId access and management on FHIR"
* status = #draft
* date = "2024-01-08"
* publisher = "Uppsala Monitoring Centre"
* contact.name = "Uppsala Monitoring Centre"
* contact.telecom[0].system = #url
* contact.telecom[=].value = "http://www.who-umc.org"
* contact.telecom[+].system = #phone
* contact.telecom[=].value = "+4618656060"
* contact.telecom[=].use = #work
* description = "The Demo API will support only a limited set of resources and operations on those to fullfill specific use cases"
* kind = #capability
* software.name = "PhPIdDemo"
* software.version = "0.1"
* fhirVersion = #5.0.0
* format[0] = #xml
* format[+] = #json
* implementationGuide = "https://build.fhir.org/ig/gcangioli/who-umc-poc/"
* rest.mode = #server
* rest.resource[0].type = #Task
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #create
* rest.resource[+].type = #SubstanceDefinition
* rest.resource[=].interaction.code = #read
* rest.resource[=].searchParam[0].name = "_id"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "GSRS Id"
* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "GSRS Id"
* rest.resource[=].searchParam[+].name = "name"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Name of substance (contains search)"
* rest.resource[=].searchParam[+].name = "code"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Code from other code system"
* rest.resource[+].type = #AdministrableProductDefinition
* rest.resource[=].interaction.code = #read
* rest.resource[=].searchParam[0].name = "_id"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "PhPId"
* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "PhPId"
* rest.resource[=].searchParam[+].name = "form-of"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Find PhPIds for an internal product ID in the"
* rest.resource[=].searchParam[+].name = "form-of:identifier"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Find PhPIds for a MPID"
* rest.resource[=].searchParam[+].name = "dose-form"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Find PhPIds with a specific dose-form"
* rest.resource[=].searchParam[+].name = "parent-php"
* rest.resource[=].searchParam[=].definition =  Canonical(parent-php) // "https://umc-ext-dev-phponfhirdemo-preview-rg01-webapp.azurewebsites.net/SearchParameter/relatedphp"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Search PhPIDs based on 'parent' PhPIDs"
* rest.resource[+].type = #MedicinalProductDefinition
* rest.resource[=].interaction.code = #read
* rest.resource[=].searchParam[0].name = "_id"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "WHODrug product Id"
* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "MPID"
* rest.resource[=].searchParam[+].name = "name"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Product name (contains search)"
* rest.resource[=].searchParam[+].name = "name-jurisdiction"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Jurisdiction according to urn:iso:std:iso:3166"
* rest.resource[=].searchParam[+].name = "name-country"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Country according to urn:iso:std:iso:3166"
* rest.resource[+].type = #Ingredient
* rest.resource[=].documentation = "Onle available within the scope of an AdministrableProductDefinition"
* rest.resource[=].searchParam[0].name = "substance-code"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Find by substance (gsrs) code"
* rest.resource[=].searchParam[+].name = "strength-presentation-quantity"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Search parameter on the format '5.4|http://unitsofmeasure.org|mg'"
* rest.resource[+].type = #CapabilityStatement
* rest.resource[=].interaction.code = #read
* rest.resource[+].type = #ImplementationGuide
* rest.resource[=].interaction.code = #read
* rest.resource[+].type = #Organization
* rest.resource[=].interaction.code = #read
* rest.resource[=].searchParam[0].name = "_id"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = ""
* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = ""
* rest.resource[=].searchParam[+].name = "name"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Name of organization (contains search)"