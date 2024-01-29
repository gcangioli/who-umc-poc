
//=========================
CodeSystem: PhpIdLevels
Id: php-level 
Title: "PhPID level"
Description: "This system lists PhPID types: level and stratum"
* ^experimental = false
* #PhPIDLevel1 "Level 1" "Level 1 - Substance specified"
* #PhPIDLevel2 "Level 2" "Level 2 - Substance and strength specified"
* #PhPIDLevel3 "Level 3" "Level 3 - Substance and form specified"
* #PhPIDLevel4 "Level 4" "Level 4 - Substance, strength and form specified"

//=========================
CodeSystem: TaskInputTypes
Id: task-input-type 
Title: "Task input type"
Description: "This system lists the available input types for a task"
* ^experimental = false
* #mpd-request-resource "Medicinal Product for PhPID request" "Medicinal Product for PhPID request"
* #ingredient-request-resource "Ingredient for PhPID request" "Ingredient for PhPID request"
* #organization-request-resource "Marketing Auth Holder for PhPID request" "Marketing Auth Holder for PhPID request"
* #substance-request-resource "Data for substance request" "Data for substance request"