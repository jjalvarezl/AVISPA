accessing
taskDescriptors
	^ taskDescriptors ifNil: [ taskDescriptors := OrderedCollection new ]