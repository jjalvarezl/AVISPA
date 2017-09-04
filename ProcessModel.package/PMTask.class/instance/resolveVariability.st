transformation
resolveVariability
	"comment stating purpose of message"

	| temporary variable names |
(self resolvedVariability = false 
  ifTrue: [	
      (self variabilityType = 'na' 
		ifTrue:[
			Transcript show: 'fin de resolucion de la variabilidad ',self mooseName;cr.
			self resolvedVariability: true.
		]
	).
	(self variabilityType = 'contributes' 
		ifTrue:[
			self contributor do:[:contribute | 
				contribute resolveVariability .
				contribute artifactOutputs do:[:element|
					(self artifactOutputs includes: element ) = false
					ifTrue: [ self artifactOutputs add: element ].
					].
				self artifactMandatoryInputs addAll: contribute artifactMandatoryInputs. 
				self roles addAll: contribute roles .
				contribute visibility: false.
				].
			Transcript show:  'resolucion contribute ',self mooseName; cr.
		]
	).
	(self variabilityType = 'replaces'
	"Solve variability replace"
		ifTrue:[
			self baseTask resolveVariability. 
			self baseTask artifactMandatoryInputs addAll: self  artifactMandatoryInputs. 
			self baseTask roles addAll: self roles.
			self baseTask visibility: true.
			self visibility: false.
			Transcript show:  'resolucion replace ',self mooseName; cr. 
		]
	).
	(self variabilityType = 'extends' 
		ifTrue:[
			self baseTask resolveVariability. 
			(self baseTask  artifactOutputs do:[:output| (self artifactOutputs includes: output )=false
				ifTrue: [self artifactOutputs add: output]	 					
			]).
			self visibility: true.
			self baseTask visibility: true.
			Transcript show:  'resolucion extend ',self mooseName;cr.
		]
	).
	(self variabilityType = 'extendsReplaces'
		ifTrue:[
			"resolve extends"
			self baseTask resolveVariability.
			(self artifactOutputs isEmpty ) = true ifTrue: [
				self artifactOutputs addAll: self baseTask  artifactOutputs.
				].
			self artifactMandatoryInputs addAll: self baseTask artifactMandatoryInputs. 
			self roles addAll: self baseTask roles .
			self baseTask visibility: false.
			self visibility: true.
			
			Transcript show:  'resolucion extens-replace ',self mooseName;cr.
		]
	).
  ] 
).