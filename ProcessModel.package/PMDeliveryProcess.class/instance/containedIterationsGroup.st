moose finder
containedIterationsGroup
	<navigation: 'All contained iterations'>
	| pmIterationGroup |
	pmIterationGroup := PMIterationGroup 
		withAll: self containedIterations
		withDescription: 'Iterations contained in ', self printString.
	pmIterationGroup myModel: self myModel.
		
	^ pmIterationGroup.