tests
testOpenUPProcessNesting

	| importer model inceptionIterations activityInitiateProject activityAgreeOnTechnicalApproach taskPlanProject taskPlanProjectDescriptor |
	
	"Initialization of the model"
	importer := ProcessModelImporter new.
	model := importer importFromStream: self openUPProcess readStream.
	
	"Model asserts"
	self assert: model notNil.
	self assert: (model isKindOf: PMModel).
	
	"Nesting process elements asserts"
	model activities do: [ :pmActivity |
		(pmActivity id asString = '_xupMvxOKEduCNqgZdt_OaA' asString)
		ifTrue:[ inceptionIterations := pmActivity ].	
			
		(pmActivity id asString = '_0oreoclgEdmt3adZL5Dmdw' asString)
		ifTrue:[ activityAgreeOnTechnicalApproach := pmActivity ].	
			
		(pmActivity id asString = '_0oSdE8lgEdmt3adZL5Dmdw' asString)
		ifTrue:[ activityInitiateProject := pmActivity ].	
	].

   model tasks do: [ :pmTask |
	   (pmTask id asString = '_0lC70MlgEdmt3adZL5Dmdw' asString)
		ifTrue:[ taskPlanProject := pmTask ].
	].

	model taskDescriptors do: [ :pmTaskDescriptor | 
		(pmTaskDescriptor id asString = '_XKDWIFY5EdqI9sTOt2pjHw' asString)
		ifTrue:[ taskPlanProjectDescriptor := pmTaskDescriptor ].
	].

	"Verifying if task descriptor is contained in the task"
	self assert: ((taskPlanProject taskDescriptors) includes: taskPlanProjectDescriptor).
	self assert: (taskPlanProjectDescriptor usedTask == taskPlanProject).

	"Verifying which objects belongs to super activities"
	self assert: ((activityAgreeOnTechnicalApproach superActivities) includes: inceptionIterations).
	self assert: ((activityInitiateProject superActivities) includes: inceptionIterations).
	self assert: (((taskPlanProject taskDescriptors first) superActivities) includes: activityInitiateProject).
	
	"Verifying which objects belongs to predecesors"
	self assert: ((activityAgreeOnTechnicalApproach predecessors) includes: activityInitiateProject).