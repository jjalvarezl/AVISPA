accessing
myModel: aModel
	myModel := aModel.
	self do: [ :a | a myModel: myModel ]