accessing
myModel: model
	myModel := model.
	self do: [ :c | c myModel: myModel ]