Instance: 4444
InstanceOf: MedicinalProductDefinitionWhoPhP
Usage: #example

* identifier.system = "http://hl7.org/fhir/sid/ndc"
* identifier.value = "4444"
* type = $medicinal-product-type#MedicinalProduct
* domain = $medicinal-product-domain#Human
* domain.text = "Human use"
* status = $publication-status#active
* status.text = "Active"
* contact.type = $medicinal-product-contact-type#ProposedMAH
* contact.contact.reference = "Organization/torrentpharmaceuticalsltd"
* contact.contact.display = "TORRENT PHARMACEUTICALS LTD"
* name.productName = "CARBAMAZEPINE"
* name.usage.country = urn:iso:std:iso:3166#USA
* name.usage.jurisdiction = urn:iso:std:iso:3166#USA
* name.usage.language =  urn:ietf:bcp:47#en-US


Instance: 3aae4a7e-b252-44a0-8e5c-813461e3e29e
InstanceOf: IngredientWhoPhP
Usage: #inline
* status = #active
* for.reference = "#"
* role = $ingredient-role#100000072072
* role.text = "Active"
* substance.code.concept = $gsrs#GSID77CC76XH15
* substance.code.concept.text = "Carbamazepine"
* substance.strength.presentationQuantity = 300 'mg' "mg"
* substance.strength.textPresentation = "300 mg"


Instance: 030CDF0818A192F539930471A2E769BA
InstanceOf: AdministrableProductDefinition
Usage: #example
* contained = 3aae4a7e-b252-44a0-8e5c-813461e3e29e
* extension[0].url = "http://www.who-umc.org/phpid/StructureDefinition/parent-phpid"
* extension[=].valueReference = Reference(7C75700EDECE48A6FE05141FBA588765)
* extension[=].valueReference.identifier.type = PhpIdLevels#PhPIDLevel3
* extension[=].valueReference.identifier.system = "http://www.who-umc.org/phpid"
* extension[=].valueReference.identifier.value = "7C75700EDECE48A6FE05141FBA588765"
* extension[+].url = "http://www.who-umc.org/phpid/StructureDefinition/parent-phpid"
* extension[=].valueReference = Reference(487A81BF9925E42734D61E18671C6400)
* extension[=].valueReference.identifier.type = PhpIdLevels#PhPIDLevel2
* extension[=].valueReference.identifier.system = "http://www.who-umc.org/phpid"
* extension[=].valueReference.identifier.value = "487A81BF9925E42734D61E18671C6400"
* identifier.type = PhpIdLevels#PhPIDLevel4
* identifier.system = "http://www.who-umc.org/phpid"
* identifier.value = "030CDF0818A192F539930471A2E769BA"
* status = #active
* formOf.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* formOf.extension.valueCode = #unsupported
* routeOfAdministration.code.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* routeOfAdministration.code.extension.valueCode = #not-applicable