tests
testExample

	| c aPresentation |
	c := PMConcept fromXMLDescriptionAsString: self exampleConcept.
	self assert: c conceptName equals: 'story_points'.
	self assert: c id equals: '_28Gp8F6AEd22Gu98eFOlrQ'.
	self assert: c isAbstract equals: false.
	aPresentation := c presentation.
	self assert: aPresentation id equals: '-ILQMonu5qLiOKjvMlGtDPg'.
	self assert: aPresentation mainDescription class equals: XMLString.
	self assert: aPresentation mainDescription string isString.
	self assert: aPresentation mainDescription size > 40
	