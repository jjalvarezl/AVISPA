metrics
averageTaskInputDependences

	<MSEProperty: #ATID type: #Number>
	<property: #ATID longName: 'Input Dependences Average per Task' description:
			'Mean of InputDependences by Task'>
	^self
		lookUpPropertyNamed: #ATID
		computedAs: [
			self numberOfTasks isZero
				ifTrue: [ -1 ]
				ifFalse: 
				    [ self truncate: ( self numberOfInputDependences /self tasks size )]]