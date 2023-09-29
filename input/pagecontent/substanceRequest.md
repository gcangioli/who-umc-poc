### Substance Request
    
Here it is described how the WHO-UMC IDMP API is used to request a new SubstanceDefinitions representing a GSID in an asynchronous way. 

The reason we need an asynchronous request model is that generating the GSID might take long time since it normaly will require human interaction.

The input for the request is defined as a draft SubstanceDefinition resource without an Identifier.

Upon a successful request, a GSID is generated and a new SubstanceDefinition resource representing it will be available.    

### Workflow

1. Create a 'draft' SubstanceDefinition (SD) resource with the information available for GSID generation. The resource should only have an id for internal references in the task and no Identifier since it is the Identifier (the GSID) that will be generated.
2. Place the SD resource in the contained section of a Task resource.
3. POST the Task to the maintenance organization. Before POSTing the Task it should be valideted using a $validate call
4. GET the status of the Task by using the 'ContentLocation' header returned from the POST call.
5. When finished the GET call will display status 'completed' and the body of the get will contain the Task with the generated SubstanceDefinition resource (including a GSID) in the output section.
6. The generated SubstanceDefinition will be available as a resolvable url.

<img height="300" src="SubstanceRequestWF.png" alt="A sample image"/>
