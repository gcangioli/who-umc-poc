
//=========================
ValueSet: VsDoseForm
Id: doseForm
Title: "Dose Form"
Description: "The dose form for a single part product, or combined form of a multiple part product"
* ^experimental = false
* codes from system $combined-dose-form

//=========================
ValueSet: VsAdministrableDoseForm
Id: administrableDoseForm
Title: "Administrable Pharmaceutical Dose Form"
Description: "Administrable Pharmaceutical Dose Form"
* ^experimental = false
* codes from system $administrable-dose-form

//=========================
ValueSet: VsEdqm
Id: edqm
Title: "EDQM Standard Terms"
Description: "EDQM Standard Terms"
* ^experimental = false
* codes from system $standardterms

//=========================
ValueSet: VsEdqmPdfCharacteristic
Id: edqmPdfCharacteristic
Title: "EDQM Pharmaceutical dose forms by characteristics"
Description: "EDQM Pharmaceutical dose forms by characteristics"
* ^experimental = true
* codes from valueset VsEdqmPdfStateOfMatter
* codes from valueset VsEdqmPdfBasicDoseForm
* codes from valueset VsEdqmPdfIntendedSite
* codes from valueset VsEdqmPdfTransformation
* codes from valueset VsEdqmPdfAdministrationMethod
* codes from valueset VsEdqmPdfReleaseChar

//=========================
ValueSet: VsEdqmPdfCharacteristicType
Id: edqmPdfCharacteristicType
Title: "EDQM Pharmaceutical dose forms by characteristics"
Description: "EDQM Pharmaceutical dose forms by characteristics"
* ^experimental = false
* $standardterms#SOM "State of Matter"
* $standardterms#BDF "Basic dose form"
* $standardterms#RCA "Release characteristics"
* $standardterms#ISI "Intended site"
* $standardterms#TRA "Transformation"
* $standardterms#AME "Administration method"

//=========================
ValueSet: VsEdqmPdfStateOfMatter
Id: edqmPdfStateOfMatter
Title: "EDQM PDF characteristics: Release characteristics"
Description: "EDQM Pharmaceutical dose forms characteristics: Release characteristics"
* ^experimental = true
* $standardterms#0100 "Gas"
// add more

//=========================
ValueSet: VsEdqmPdfBasicDoseForm
Id: edqmPdfBasicDoseForm
Title: "EDQM PDF characteristics: Basic dose form"
Description: "EDQM Pharmaceutical dose forms characteristics: Basic dose form"
//* ^experimental = true
//* $standardterms#0054 "Gum"
* codes from valueset http://localhost:8085/who-umc/edqm/BDF

//=========================
ValueSet: VsEdqmPdfReleaseChar
Id: edqmPdfReleaseChar
Title: "EDQM PDF characteristics: Release characteristics"
Description: "EDQM Pharmaceutical dose forms characteristics: Release characteristics"
* ^experimental = true
* $standardterms#0047 "Conventional" 
// add more

//=========================
ValueSet: VsEdqmPdfIntendedSite
Id: edqmPdfIntendedSite
Title: "EDQM PDF characteristics: Intended site"
Description: "EDQM Pharmaceutical dose forms characteristics: Intended site"
* ^experimental = true
* $standardterms#0021 "Auricular"
//* codes from valueset http://localhost:8085/who-umc/edqm/ISI

//=========================
ValueSet: VsEdqmPdfTransformation
Id: edqmPdfTransformation
Title: "EDQM PDF characteristics: Transformation"
Description: "EDQM Pharmaceutical dose forms characteristics: Transformation"
* ^experimental = true
* $standardterms#0043 "Unknown"
// add more

//=========================
ValueSet: VsEdqmPdfAdministrationMethod
Id: edqmPdfAdministrationMethod
Title: "EDQM PDF characteristics: Administration method"
Description: "EDQM Pharmaceutical dose forms characteristics: Administration method"
* ^experimental = true
* $standardterms#0007 "Chewing"
// add more

//=========================
ValueSet: VsManufacturedDoseForm
Id: manufacturedDoseForm
Title: "Manufactured Dose Form"
Description: "Manufactured Dose Form"
* ^experimental = false
* codes from system $manufactured-dose-form

//=========================
ValueSet: VsRouteOfAdministration
Id: routeOfAdministration
Title: "Route Of Administration"
Description:  "Route Of Administration"
* ^status = #draft
* ^experimental = false
* ^copyright = """This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement

The SNOMED International IPS Terminology is distributed by International Health Terminology Standards Development Organisation, trading as SNOMED International, and is subject the terms of the Creative Commons Attribution 4.0 International Public License. For more information, see SNOMED IPS Terminology

The HL7 International IPS implementation guides incorporate SNOMED CT®, used by permission of the International Health Terminology Standards Development Organisation, trading as SNOMED International. SNOMED CT was originally created by the College of American Pathologists. SNOMED CT is a registered trademark of the International Health Terminology Standards Development Organisation, all rights reserved. Implementers of SNOMED CT should review usage terms or directly contact SNOMED International: info@snomed.org"""

* include codes from system $sct where concept descendent-of #284009009

//==========================
ValueSet: VsUnitofPresentation
Id: unitofPresentation
Title: "Units of Presentation"
Description: "Units of Presentation"
* ^experimental = false
* codes from system $unit-of-presentation


//==========================
ValueSet: VsCountry
Id: country
Title: "ISO Country two letter code"
Description: "ISO Country two letter code"
* ^experimental = false
* codes from valueset http://terminology.hl7.org/ValueSet/v3-Country2

//==========================
ValueSet: VsSubstance
Id: substance
Title: "Substances"
Description: "Substances"
* ^experimental = false
* include codes from system $gsrs


 //==========================
ValueSet: VsIngredientRole
Id: ingredientRole
Title: "Ingredient Role"
Description: "Ingredient Role; e.g.,active, excipient"
* ^experimental = false
* codes from system $ingredient-role


//==========================
ValueSet: VsAtcClassification
Id: atcClassification
Title: "WHO ATC"
Description: "World Health Organization Anatomical Therapeutic Chemical (ATC) classification system"
* ^experimental = false
* codes from system $atc 
* ^copyright = "This artifact includes content from Anatomical Therapeutic Chemical (ATC) classification system. ATC codes are copyright World Health Organization (WHO) Collaborating Centre for Drug Statistics Methodology. Terms & Conditions in https://www.whocc.no/use_of_atc_ddd/"


//=========================
ValueSet: VsPhpIdLevels
Id: phpid-type
Title: "Identifier Type Value Set"
Description: "Identifier Type Value Set"
* ^experimental = false
* codes from system PhpIdLevels

// 
//=========================
ValueSet: VsMpIdSystem
Id: mpid-system
Title: "MPID system"
Description: "Medicinal  Product identification systems"
* ^experimental = false
* $uri#http://hl7.org/fhir/sid/ndc