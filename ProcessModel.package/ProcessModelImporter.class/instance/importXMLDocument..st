as yet unclassified
importXMLDocument: document 
	"
	self new importXMLDocument: (Smalltalk at: #MyDocument)
	"
	| processes deliveryProcesses pmDeliveryProcesses iterations pmIterations capabilityPatterns pmCapabilityPatterns tasks pmTasks guidelines concepts pmConcepts pmModel pmGuidelines contentElements pmContentElements roles pmRoles artifacts pmArtifacts templates pmTemplates activities pmActivities breakdownElements taskDescriptors pmTaskDescriptors pmBreakdownElements deliverables pmDeliverables taskinuse entities tempArtifacts tempInputArtifacts tempOutputArtifacts tempTasks tempRoles tempPMRoles tempPMTasks |
	
	processes := document // #Process.
	contentElements := document // #ContentElement.
	breakdownElements := document // #BreakdownElement.
	
	deliveryProcesses := processes select: [ :el | (el attributeAt: #xsi:type) = 'uma:DeliveryProcess' ].
	pmDeliveryProcesses := deliveryProcesses collect: [:xmlElement | 
									PMDeliveryProcess fromXMLDescription: xmlElement].
	"Los capability patterns no son de utilidad para los objetivos de avispa, sin embargo se dejan importados y almacenados en el pmModel sin mostrarlo en el moose panel por si se necesitan mas adelante"
	capabilityPatterns := processes select: [ :el | (el attributeAt: #xsi:type) = 'uma:CapabilityPattern' ].
	pmCapabilityPatterns := capabilityPatterns collect: [:xmlElement | 
									PMCapabilityPattern fromXMLDescription: xmlElement].
	pmContentElements := contentElements collect: [:xmlElement | 
									PMContentElement fromXMLDescription: xmlElement].
   pmBreakdownElements := breakdownElements collect: [:xmlElement | 
									PMBreakdownElement fromXMLDescription: xmlElement].
	iterations := breakdownElements select: [:el | (el attributeAt: #xsi:type) = 'uma:Iteration' ].
	pmIterations := iterations collect: [:xmlElement | PMIteration fromXMLDescription: xmlElement].

	tasks := contentElements select: [:el | (el attributeAt: #xsi:type) = 'uma:Task' ].
	pmTasks := tasks collect: [:xmlElement | PMTask fromXMLDescription: xmlElement].
	
	roles := contentElements select: [:el | (el attributeAt: #xsi:type) = 'uma:Role' ].
	pmRoles := roles collect: [:xmlElement | PMRole fromXMLDescription: xmlElement].

	artifacts := contentElements select: [:el | #('uma:Artifact' 'uma:Outcome') includes: (el attributeAt: #xsi:type) ].
	
	deliverables := contentElements select: [:el | #('uma:Deliverable') includes: (el attributeAt: #xsi:type) ].
	
	pmArtifacts := artifacts collect: [:xmlElement | PMArtifact fromXMLDescription: xmlElement].
	
	pmDeliverables := deliverables collect: [:xmlElement | PMArtifact fromXMLDescription: xmlElement].
	
	pmDeliverables do:[:element| element isDeliverable: true].
	
	pmArtifacts do: [:element | element isDeliverable:false].
	
	pmDeliverables do:[:element| pmArtifacts add:element].
	
	guidelines := contentElements select: [:el | #('uma:Guideline' 'uma:Template' 'uma:Concept' 'uma:Example' 'uma:Checklist') includes: (el attributeAt: #xsi:type)].
	pmGuidelines := guidelines collect: [:xmlElement | PMGuideline fromXMLDescription: xmlElement ].
	
	concepts := contentElements select: [:el | (el attributeAt: #xsi:type) = 'uma:Concept' ].
	pmConcepts := concepts collect: [:xmlElement | PMConcept fromXMLDescription: xmlElement ].
	
	templates := contentElements select: [:el | (el attributeAt: #xsi:type) = 'uma:Template' ].
	pmTemplates := templates collect: [:xmlElement | PMTemplate fromXMLDescription: xmlElement ].
	
	activities := breakdownElements select: [:el | (el attributeAt: #xsi:type) = 'uma:Activity' ].
	pmActivities := activities collect: [:xmlElement | PMActivity fromXMLDescription: xmlElement ].
	
	taskDescriptors := breakdownElements select: [:el | (el attributeAt: #xsi:type) = 'uma:TaskDescriptor' ].
	pmTaskDescriptors := taskDescriptors collect: [:xmlElement | PMTaskDescriptor fromXMLDescription: xmlElement ].
	
	
	"Se correlacionan pmTasks con pmTaskDescriptors."
	tasks do: [:task |
		taskDescriptors do: [:taskDescriptor |
			((task attributeAt: #id) asString = (taskDescriptor / #Task) first nodes first asString)
			   ifTrue: [
					pmTasks do:[:pmTask |
						((task attributeAt: #id) asString = pmTask id asString)
							ifTrue:[
						      pmTaskDescriptors do:[:pmTaskDescriptor |
								 (((taskDescriptor attributeAt: #id) asString) = pmTaskDescriptor id asString)
							      ifTrue: [
								      pmTask addTaskDescriptor: pmTaskDescriptor.
								      pmTaskDescriptor usedTask: pmTask.
								   ].
					         ]
				         ]
					]
				]
		]
	].
	
	taskinuse := OrderedCollection new.
	
	"entities es usado para cumplir con los test del presente modelo de software."
	entities := OrderedCollection new.
	"Aquí se concatenan las tres colecciones basicas de artefactos para pasar el test"
	entities := pmTasks , pmRoles , pmArtifacts.
	
	"INICIO DE CORRELACIONES DE ANIDACION ENTRE TAREAS, ROLES Y ARTEFACTOS:"
	
	"pmRoles."
	"self halt."
	
	"Inicio de correlaciones. Asignando artefactos a los roles responsables de los mismos:"
	"Primer ciclo, lee cada uno de los roles en el atributo 'roles'"
	tempArtifacts := OrderedCollection new.
	roles do:[ :role |
		
		"Segundo ciclo for compara el id del ResposibleFor con cada uno de los roles"
		pmArtifacts do: [ :tempPMArtifact | 
			"Encontrando si existe alguna coincidencia de algun id de algun elemento en PMArtifacts con algun rol xml plano cuyo ResponsibleFor concuerde con dicho id."
			(role / #ResponsibleFor) do: [ :resposibleArtifactFromRole |
				((tempPMArtifact id asString) = ((resposibleArtifactFromRole nodes first) asString))
					ifTrue: [ 
						tempArtifacts add: tempPMArtifact.
						tempArtifacts.
						"self halt." 
					].
			].
		].
	
	   (tempArtifacts size > 0)
			ifTrue: [ 
				"Una vez teniendo todos los tempArtifacts del presente rol, almacenelo en el respectivo PMRole."
				tempPMRoles := PMRole fromXMLDescription: role.
				pmRoles do: [ :pmRole | 
			   		(pmRole id asString = tempPMRoles id asString)
						ifTrue: [ 						
							"A cada uno de los artifacts en pmRole se le añade el presente rol"
							tempArtifacts do:[ :pmArtifact |
								pmArtifact addResponsibleRole: pmRole.
							].
					
							"Se añaden todos los tempArtifacts al pmRole"
							pmRole responsibleArtifacts: tempArtifacts.
						].
				].
			].
		"Reiniciar el tempArtifacts para la próxima iteración"
		tempArtifacts := OrderedCollection new.
	].
	pmRoles. "No hace nada, solo para inspeccionar si verdaderamente funciona."
	"self halt."
	"Fin de correlaciones. Asignando artefactos a los roles"
	
	"Inicio de correlaciones. Asignando roles, artefactos de entrada y de salida a las tareas:"
	"Hace tal cual como la anterior correlación."
	tempRoles := OrderedCollection new.
	tempInputArtifacts := OrderedCollection new.
	tempOutputArtifacts := OrderedCollection new.
	tasks do:[ :task |
		pmRoles do: [ :tempPMRole | 
			((tempPMRole id asString) = ((task / #PerformedBy) first ifNotNil: [:output | output nodes first]) asString) 
				ifTrue: [ tempRoles add: tempPMRole ] 
		].
	   pmArtifacts do: [ :tempPMArtifact | 
			((tempPMArtifact id asString) = ((task / #MandatoryInput) first ifNotNil: [:output | output nodes first]) asString) 
				ifTrue: [ tempInputArtifacts add: tempPMArtifact ].
			((tempPMArtifact id asString) = ((task / #Output) first ifNotNil: [:output | output nodes first]) asString) 
				ifTrue: [ tempOutputArtifacts add: tempPMArtifact ].
		].
		tempPMTasks := PMTask fromXMLDescription: task.
		pmTasks do: [ :pmTask | 
			   (pmTask id asString = tempPMTasks id asString)
					ifTrue: [ 
						"Asignando roles que ejecutan a la tarea"
						pmTask roles: tempRoles. 
						"Asignando artefactos de entrada a la tarea"
						tempInputArtifacts do: [ :tempInputArtifact |  
							tempTasks := OrderedCollection new.
							tempTasks := tempInputArtifact inputTasks. 
							tempTasks add: pmTask.
							tempInputArtifact inputTasks: tempTasks.
						].
					   "Asignando artefactos de salida a la tarea"
						tempOutputArtifacts do: [ :tempOutputArtifact |  
							tempTasks := OrderedCollection new.
							tempTasks := tempOutputArtifact outputTasks. 
							tempTasks add: pmTask.
							tempOutputArtifact outputTasks: tempTasks.
						].
						pmTask artifactMandatoryInputs: tempInputArtifacts.
						pmTask artifactOutputs: tempOutputArtifacts.
						
						"Asignando artefactos que los roles realizan: artefactos de salida de la tarea actual (que son los únicos que requiere esfuerzos de realización) con los roles de la tarea actual)"
						pmTask roles do: [ :tempRole |
							pmTask artifactOutputs do: [ :tempArtifact |
								tempArtifact addPerformerRole: tempRole 
						   ].
						].
					]
			].
		tempRoles := OrderedCollection new.
		tempInputArtifacts := OrderedCollection new.
		tempOutputArtifacts := OrderedCollection new.
	].
   pmTasks. "No hace nada, solo para inspeccionar si verdaderamente funciona."
	"self halt."
	"Fin de correlaciones. Asignando roles, artefactos de entrada y de salida a las tareas"
	
	"FIN DE CORRELACIONES DE ANIDACION ENTRE TAREAS, ROLES Y ARTEFACTOS:"
	
	"INICIO DE IMPLEMENTACIONES DE SUPERACTIVIDADES Y PREDECESORES ENTRE TAREAS Y PATRONES DE CAPACIDAD"
	
	"Super-actividades de tareas a actividades:"
	pmTasks do:[:pmTask |
		pmTask taskDescriptors do:[ :pmTaskDescriptor |
			taskDescriptors do:[ :taskDescriptor |
				(((taskDescriptor attributeAt: #id) asString) = pmTaskDescriptor id asString)
		         ifTrue: [
						  activities do:[:activity |
						     ((((taskDescriptor / #SuperActivity) first ifNotNil: [:output | output nodes first]) asString = (activity attributeAt: #variabilityBasedOnElement) asString) or:
						     (((taskDescriptor / #SuperActivity) first ifNotNil: [:output | output nodes first]) asString = (activity attributeAt: #id) asString))
						        ifTrue:[
										pmActivities do: [ :pmActivity |
											 (((activity attributeAt: #id) asString) = pmActivity id asString)
												ifTrue: [ 
													pmTaskDescriptor addSuperActivity: pmActivity. 
													pmActivity addContainedTaskDescriptor: pmTaskDescriptor.
												]
										]
							     ]
						  ]
					]
			]
	   ]
	].

	
	
	activities do:[:activity1 |
		activities do: [:activity2 |
			"Super-actividades de tareas a actividades:"
      	    (((activity1 / #SuperActivity) first ifNotNil: [:output | output nodes first]) asString = (activity2 attributeAt: #variabilityBasedOnElement) asString)
			 ifTrue:[
               pmActivities do: [ :pmActivity1 |
	                (((activity1 attributeAt: #id) asString) = pmActivity1 id asString)
                       ifTrue: [
	                        "pmTaskDescriptor addSuperActivity: pmActivity"
	                        pmActivities do: [ :pmActivity2 |
	                            (((activity2 attributeAt: #id) asString) = pmActivity2 id asString)
                                  ifTrue: [ 
	                                  pmActivity1 addSuperActivity: pmActivity2.
												pmActivity2 addContainedActivity: pmActivity1.
	                               ]
                           ]
	                    ]
               ]
			 ].
			"Predecesores de actividades a actividades:"
			 (((activity1 / #Predecessor) first ifNotNil: [:output | output nodes first]) asString = (activity2 attributeAt: #id) asString)
			 ifTrue:[
               pmActivities do: [ :pmActivity1 |
	                (((activity1 attributeAt: #id) asString) = pmActivity1 id asString)
                       ifTrue: [
	                        "pmTaskDescriptor addSuperActivity: pmActivity"
	                        pmActivities do: [ :pmActivity2 |
	                            (((activity2 attributeAt: #id) asString) = pmActivity2 id asString)
                                  ifTrue: [ pmActivity1 addPredecessor: pmActivity2 ]
                           ]
	                    ]
               ]
			 ]
		].
	  "Super-actividades de actividades a delivery process:"
	   pmDeliveryProcesses do: [ :pmDeliveryProcess |
			(((activity1 / #SuperActivity) first ifNotNil: [:output | output nodes first]) asString = (pmDeliveryProcess id) asString)
			ifTrue: [ pmActivities do: [ :pmActivity1 |
	                (((activity1 attributeAt: #id) asString) = pmActivity1 id asString)
                       ifTrue: [
									pmActivity1 addSuperActivity: pmDeliveryProcess.
									pmDeliveryProcess addContainedActivity: pmActivity1.
	                    ]
               ] 
         ].
		].
		"Super-actividades de actividades a iteraciones:"
		iterations do: [ :iteration |
			(((activity1 / #SuperActivity) first ifNotNil: [:output | output nodes first]) asString = (iteration attributeAt: #variabilityBasedOnElement) asString)
			 ifTrue:[
               pmActivities do: [ :pmActivity1 |
	                (((activity1 attributeAt: #id) asString) = pmActivity1 id asString)
                       ifTrue: [
	                        "pmTaskDescriptor addSuperActivity: pmActivity"
	                        pmIterations do: [ :pmIteration |
	                            (((iteration attributeAt: #id) asString) = pmIteration id asString)
                                  ifTrue: [ 
	                                  pmActivity1 addSuperActivity: pmIteration.
												pmIteration addContainedActivity: pmActivity1.
	                               ]
                           ]
	                    ]
               ]
			 ]. 
		].
	].

	"Super-actividades de iteraciones a delivery processes:"
	deliveryProcesses do: [ :deliveryProcess |
	iterations do: [ :iteration |
			(((iteration / #SuperActivity) first ifNotNil: [:output | output nodes first]) asString = (deliveryProcess attributeAt: #id) asString)
			 ifTrue:[
               pmDeliveryProcesses do: [ :pmDeliveryProcess |
	                (((deliveryProcess attributeAt: #id) asString) = pmDeliveryProcess id asString)
                       ifTrue: [
	                        "pmTaskDescriptor addSuperActivity: pmActivity"
	                        pmIterations do: [ :pmIteration |
	                            (((iteration attributeAt: #id) asString) = pmIteration id asString)
                                  ifTrue: [ 
	                                  pmIteration addSuperActivity: pmDeliveryProcess.
												pmDeliveryProcess addContainedIteration: pmIteration.
	                               ]
                           ]
	                    ]
               ]
			 ]. 
		].
	 ].
	

	"FIN DE IMPLEMENTACIONES DE SUPERACTIVIDADES Y PREDECESORES ENTRE TAREAS Y PATRONES DE CAPACIDAD"
	
	pmModel := PMModel new
						deliveryProcesses: pmDeliveryProcesses;
						capabilityPatterns: pmCapabilityPatterns;
						tasks: pmTasks; 
						concepts: pmConcepts; 
						guidelines: pmGuidelines;
						contentElements: pmContentElements;
						roles: pmRoles;
						artifacts: pmArtifacts;
						templates: pmTemplates;
						activities: pmActivities;
						taskDescriptors: pmTaskDescriptors;
						breakdownElements: pmBreakdownElements;
						usedtasks: taskinuse;
						iterations: pmIterations;
						entities: entities.
	
	"Reasignando pmModel a cada uno de sus elementos para pasar las métricas de todo el modelo a los planos generados por cada actividad."
	pmModel tasks: (pmModel tasks collect: [ :pmTask | pmTask myModel: pmModel ]).
	pmModel concepts: (pmModel concepts collect: [ :pmConcept | pmConcept myModel: pmModel ]).
	pmModel guidelines: (pmModel guidelines collect: [ :pmGuideline | pmGuideline myModel: pmModel ]).
	pmModel roles: (pmModel roles collect: [ :pmRole | pmRole myModel: pmModel ]).
	pmModel artifacts: (pmModel artifacts collect: [ :pmArtifact | pmArtifact myModel: pmModel ]).
	pmModel taskDescriptors: (pmModel taskDescriptors collect: [ :pmTaskDescriptor | pmTaskDescriptor myModel: pmModel ]).
	pmModel activities: (pmModel activities collect: [ :pmActivity | pmActivity myModel: pmModel ]).
	pmModel deliveryProcesses: (pmModel deliveryProcesses collect: [ :pmDeliveryProcess | pmDeliveryProcess myModel: pmModel ]).
	pmModel capabilityPatterns: (pmModel capabilityPatterns collect: [ :pmCapabilityPattern | pmCapabilityPattern myModel: pmModel ]).
	pmModel iterations: (pmModel iterations collect: [ :pmIteration | pmIteration myModel: pmModel ]).
	pmModel.
	
	"pmModel resolveReferences.
	pmModel resolucionVariability.
	pmModel initializeMetrics."
	"pmModel numberOfArtifactMandatoryInputs.
	pmModel numberOfArtifactOutputs.
	pmModel numberOfTasks.
	pmModel averageTaskInputDependences.
	pmModel averageTaskOutputDependences.
	pmModel sigmaTaskInputDependences.
	pmModel sigmaTaskOutputDependences.
 Unmatched comment quote ->"	^ pmModel
	