metrics
sigmaTaskOutputDependences

	<MSEProperty: #sgTOD type: #Number>
	<property: #sgTOD longName: 'Output Dependences Standard Desviation per Task' description:
			'Standard Desviation of OutputDependences by Task'>
	^self
		lookUpPropertyNamed: #sgTOD
		computedAs: [
			self numberOfTasks isZero
				ifTrue: [ -1 ]
				ifFalse: 
				    [ self truncate: (((self tasks inject: 0 into: [:sum :task | sum + (task desviationToMediaOutputArtifactsCal: self averageTaskOutputDependences) squared])/ (self tasks size)) sqrt) ]]
		