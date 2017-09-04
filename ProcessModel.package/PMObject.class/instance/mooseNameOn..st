printing
mooseNameOn: stream
	presentationName notNil ifTrue: [
		stream nextPutAll: presentationName ]