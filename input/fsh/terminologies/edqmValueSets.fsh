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
Title: "EDQM PDF by characteristics"
Description: "EDQM Pharmaceutical dose forms by characteristics"
* ^experimental = true
// * codes from valueset VsEdqmPdfStateOfMatter
* codes from valueset $edqmPdfBasicDoseForm
* codes from valueset $edqmPdfIntendedSite
//* codes from valueset $edqmPdfTransformation
* codes from valueset $edqmPdfAdministrationMethod
* codes from valueset $edqmPdfReleaseChar

//=========================
ValueSet: VsEdqmPdfCharacteristicType
Id: edqmPdfCharacteristicType
Title: "Types of EDQM PDF by characteristics"
Description: "Types of EDQM Pharmaceutical dose forms by characteristics"
* ^experimental = false
//* $standardterms#SOM "State of Matter"
* $standardterms#BDF "Basic dose form"
* $standardterms#RCA "Release characteristics"
* $standardterms#ISI "Intended site"
//* $standardterms#TRA "Transformation"
* $standardterms#AME "Administration method"

//=========================
//ValueSet: VsEdqmPdfStateOfMatter
//Id: edqmPdfStateOfMatter
//Title: "EDQM PDF characteristics: Release characteristics"
//Description: "EDQM Pharmaceutical dose forms characteristics: Release characteristics"
//* ^experimental = true
//* $standardterms#0100 "Gas"
// add more

/* //=========================
ValueSet: VsEdqmPdfBasicDoseForm
Id: edqmPdfBasicDoseForm
Title: "EDQM PDF characteristics: Basic dose form"
Description: "EDQM Pharmaceutical dose forms characteristics: Basic dose form"
* ^experimental = true
//* $standardterms#0054 "Gum"
* codes from valueset https://umc-ext-dev-phponfhirdemo-preview-rg01-webapp.azurewebsites.net/who-umc/edqm/BDF

//=========================
ValueSet: VsEdqmPdfReleaseChar
Id: edqmPdfReleaseChar
Title: "EDQM PDF characteristics: Release characteristics"
Description: "EDQM Pharmaceutical dose forms characteristics: Release characteristics"
* ^experimental = true
* $standardterms#0047 "Conventional" 
// add more
 */
//=========================
//ValueSet: VsEdqmPdfTransformation
//Id: edqmPdfTransformation
//Title: "EDQM PDF characteristics: Transformation"
//Description: "EDQM Pharmaceutical dose forms characteristics: Transformation"
//* ^experimental = true
//* $standardterms#0043 "Unknown"
// add more

/* //=========================
ValueSet: VsEdqmPdfAdministrationMethod
Id: edqmPdfAdministrationMethod
Title: "EDQM PDF characteristics: Administration method"
Description: "EDQM Pharmaceutical dose forms characteristics: Administration method"
* ^experimental = true
* $standardterms#0007 "Chewing"
// add more */
