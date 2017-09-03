metrics
ratioOfInputDependences

	<MSEProperty: #RID type: #Number>
	<property: #RID longName: 'Input dependences / total dependences' description:
			'The ratio between input dependences of artifacts with tasks and total number of dependences of artifacts with tasks'>
	^self
		lookUpPropertyNamed: #RID
		computedAs: [
			self numberOfDependencesBetweenArtifactsAndTasks isZero
				ifTrue: [ -1 ]
				ifFalse: 
					[ self truncate: (self numberOfInputDependences / self numberOfDependencesBetweenArtifactsAndTasks) ]
			]