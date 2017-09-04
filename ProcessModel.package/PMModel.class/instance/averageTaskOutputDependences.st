metrics
averageTaskOutputDependences

	<MSEProperty: #ATOD type: #Number>
	<property: #ATOD longName: 'Output Dependences Average per Task' description:
			'Media of OutputDependences by Task'>
	^self
		lookUpPropertyNamed: #ATOD
		computedAs: [
			self numberOfTasks isZero
				ifTrue: [ -1 ]
				ifFalse: 
				    [ self truncate:  self numberOfOutputDependences/(self tasks size )]]