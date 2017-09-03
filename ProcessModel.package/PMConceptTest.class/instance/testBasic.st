tests
testBasic

	| c |
	c := PMConcept new.
	self assert: c conceptName equals: 'NO_NAME'.
	self assert: c isAbstract equals: false.