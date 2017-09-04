accessing
mooseName: string 
	^ self privateState 
		propertyAt: #mooseName
		put: string