### PhPID Request
    
In this section it is described how the WHO-UMC IDMP API is used to request a new PhPID represented by a AdministrableProductDefinitionin an asynchronous way. 

The reason for using an asynchronous request model is that the process for generating PhPIDs includes a manual data validation step which can not be  done instantly.

The asynchronous nature of the request is achieved by using a FHIR Task. In the Task a draft AdministrableProoductDefinition (APD) resource without an Identifier is used as input, placed in the contained section of the Task. The ingredient(s), form and strength of the APD is modelled using an Ingredient resource. To generate the APD a MedicinalProductDefinition (MPD) containing information identifying the MedicinalProduct, such as: name, market authorization holder, local MPID, etc is also required.

Upon a successful request, a PhPID is generated and a new AdministrableProductDefinition resource representing it will be available, referenced in the output section of the Task.    

### Workflow

1. Create a 'draft' AdministrableProductDefinition (APD) resource together with Ingredient (I) resource(s) with the information available for PhPID generation. Also create a MedicinalProductDefinition (MPD) containing information about the related medicinal product. The resources should only have ids for internal references in the Task and no Identifiers. It is the Identifier of the APD (the PhPID) that will be generated.
2. Place the APD, I and MPD resources in the contained section of a Task resource.
3. POST the Task to the maintenance organization. Before POSTing the Task it should be validated using a $validate call
4. GET the status of the Task by using the 'ContentLocation' header returned from the POST call. It is also possible to get the status by requesting the Task given the id of the Task returned as response of the POST.
5. When finished the GET call will display status 'completed' and the body of the get will contain the Task with a reference to the generated APD resource (including a PhPID) in the output section.
6. The generated AdministrableProductDefinition will be available as a resolvable url.

<img src="PhPIDRequestWF.png" alt="PhPID request workflow"/>
