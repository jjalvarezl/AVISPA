metrics
ratioOfOutputDependences

	<MSEProperty: #ROD type: #Number>
	<property: #ROD longName: 'Output dependences / total dependences' description:
			'The ratio between output dependences of artifacts with tasks and total number of dependences of artifacts with tasks'>
	^self
		lookUpPropertyNamed: #ROD
		computedAs: [
			self numberOfDependencesBetweenArtifactsAndTasks isZero
				ifTrue: [ -1 ]
				ifFalse: 
					[ self truncate: (self numberOfOutputDependences / self numberOfDependencesBetweenArtifactsAndTasks) ]
			]