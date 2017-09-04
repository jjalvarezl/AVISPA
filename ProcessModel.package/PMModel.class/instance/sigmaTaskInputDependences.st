metrics
sigmaTaskInputDependences

	<MSEProperty: #sgTID type: #Number>
	<property: #sgTID longName: 'Output Dependences Standard Desviation per Task' description:
			'Standard Desviation of OutputDependences by Task'>
	^self
		lookUpPropertyNamed: #sgTID
		computedAs: [
			self numberOfTasks isZero
				ifTrue: [ -1 ]
				ifFalse: 
				    [ self truncate: (((self tasks inject: 0 into: [:sum :task | sum + (task desviationToMediaInputArtifactsCal: self averageTaskInputDependences) squared ])/ (self tasks size)) sqrt) ]]