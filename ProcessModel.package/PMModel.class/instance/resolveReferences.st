actions
resolveReferences
	| activitiesDict contentElement contentElementsDict artifactsDict artifactOutputs artifactMandatoryInputs breakdownElementsDict rolesDict myRoles guidelineDict myGuidelines contentElementBase aux tasksinuseDict elementUse| 
	
	"We get all the content elements"
	contentElementsDict := Dictionary new.
	self contentElements do:[:element | contentElementsDict at: element id put: element ].
	
	
      "We get all the breakdown elements"
	breakdownElementsDict := Dictionary new.
	self breakdownElements do:[: element | breakdownElementsDict at: element id put: element ].
	
	tasksinuseDict:= Dictionary new.
	self taskDescriptors do:[:element | tasksinuseDict at: element id put: element ].

	"We get all the activities"
	activitiesDict := Dictionary new.
	self activities do:[:element | activitiesDict at: element id put: element ].

	"We need a dictionary of artifacts"
	artifactsDict := Dictionary new.
	self artifacts do:[:element | artifactsDict at: element id put: element ].
	
   "We need a dictionary of roles"
	rolesDict := Dictionary new.
	self roles do:[:element | rolesDict at: element id put: element ].
	
	 "We need a dictionary of roles"
	rolesDict := Dictionary new.
	self roles do: [:element | rolesDict at: element id put:element].

	"We need a dictionary of guidelines"
	guidelineDict := Dictionary new.
	self guidelines do: [:element | guidelineDict at: element id put: element].
	
	self artifacts do: [:artifact |
		 contentElement := contentElementsDict at: artifact id.
		
		"We set the name"
		
		artifact mooseName: contentElement mooseName.
		
		"Resolve guidelines to artifacts"
		myGuidelines := contentElement guidelineIds collect: 
		                      [:id | guidelineDict at: id].
		
	
	    self assert: [myGuidelines allSatisfy: [:elem | elem isKindOf: PMGuideline]].
	    artifact myGuidelines addAll: myGuidelines].
	

	"Now, we can fill the tasks"
	
	
	self tasks do: [:task |
	contentElement := contentElementsDict at: task id.
	"(contentElement idBase = nil) ifTrue:[contentElementBase := nil] ifFalse:[contentElementBase := contentElementsDict at: contentElement idBase]."		
	"We set the name"
	task mooseName: contentElement mooseName.
	task idBase:contentElement idBase.
	task variabilityType:contentElement variabilityType.
	task visibility: true.
	task resolvedVariability: false.
	task use: false.
	taskDescriptors do:[:usetasks | 
		elementUse := tasksinuseDict at: usetasks id.
		(usetasks mooseName  = task mooseName )ifTrue:[task use: true.  Transcript show:  'yes'; cr] ].
	"task baseTask: contentElementBase."
	(contentElement variabilityType = 'na')ifTrue: [task baseTask: nil].	
	
	"Resolve guidelines to Tasks"
		
		
		myGuidelines := contentElement guidelineIds collect: 
		                      [:id | guidelineDict at: id].
		
	    task myGuidelines addAll: myGuidelines.
	
	"Resolve Artifacts to Tasks"	
	
	artifactOutputs := contentElement artifactOutputIds collect: 
		                      [:id | artifactsDict at: id].
		
	artifactOutputs do:[:element| element tasks add: task]. 
	artifactOutputs do:[:element| element outputTasks add: task]. 
	self assert: [artifactOutputs allSatisfy: [:elem | elem isKindOf: PMArtifact]].
	task artifactOutputs addAll: artifactOutputs.
		
	artifactMandatoryInputs := contentElement artifactMandatoryInputIds  collect: [:id | artifactsDict at: id ].
	artifactMandatoryInputs do:[:element| element tasks add: task]. 
	artifactMandatoryInputs do:[:element| element inputTasks add: task]. 
	self assert: [artifactMandatoryInputs allSatisfy: [:elem | elem isKindOf: PMArtifact]].
	task artifactMandatoryInputs addAll: artifactMandatoryInputs.
	
	"Resolve Tasks to Roles"	
	myRoles := contentElement roleIds collect: 
		                      [:id | rolesDict at: id].
	myRoles do:[:element| element tasks add: task].
	
	
	"Resolve Roles to Tasks"
	
	myRoles do:[:	element | element tasks do: [ :tk | (tk roles includes: element) ifFalse: [tk roles add: element] ]]
		].
	
	"Resolve Artifacts to Roles"
	self artifacts do:[:element | 
		 contentElement := contentElementsDict at: element id.
		"Resolve guidelines to Roles"
		myGuidelines := contentElement guidelineIds collect: 
		                      [:id | guidelineDict at: id].
		
	   element myGuidelines addAll: myGuidelines.	
		element tasks do:[:task | task roles do: [:role | (role artifacts includes: element) ifFalse: [ role addArtifact: element ]]]].
	
	
	self addAll: self tasks.
	self tasks  do: [:task| (task variabilityType = 'contributes')
		ifTrue: [
			(task contributor add: (tasks select: [:atask| atask  id = task idBase]) first ).
	       ]
		ifFalse: [
			(task variabilityType ~= 'na')ifTrue: [task baseTask: ( tasks  select: [:atask | atask id  =  task idBase]) first.].
			]
		].
	
	
	"self taskDescriptors do:[ :task | self usedtasks add: (self tasks select: [:atask| atask id = task usedTask ])]."
	self addAll: self roles.
	self addAll: self artifacts.
	
	"Now, we can fill the tasks"
	
	"self tasks do: [:task |
		contentElement := contentElementsDict at: task id."
		
		"We set the name"
		"task elementName: contentElement elementName.
		
		artifactOutputs := contentElement artifactOutputIds collect: 
		                      [:id | artifactsDict at: id].
		
		artifactOutputs do:[:element| element tasks add: task]. 
		self assert: [artifactOutputs allSatisfy: [:elem | elem isKindOf: PMArtifact]].
		task artifactOutputs addAll: artifactOutputs.
		
		artifactMandatoryInputs := contentElement artifactMandatoryInputIds  collect: [:id | artifactsDict at: id ].
		artifactMandatoryInputs do:[:element| element tasks add: task]. 
		self assert: [artifactMandatoryInputs allSatisfy: [:elem | elem isKindOf: PMArtifact]].
		task artifactMandatoryInputs addAll: artifactMandatoryInputs]."
	
	  
	
"	self activities do: [:activity |
		breakdownElement := breakdownElementsDict at: activity id.
		predecessorActivities := breakdownElement predecessorIds collect: [:id | activitiesDict at: id].
		self assert: [predecessorActivities allSatisfy: [:elem | elem isKindOf: PMActivity]].
		activity predecessors addAll: predecessorActivities.
		]."