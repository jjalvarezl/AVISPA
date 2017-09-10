accessing
containedActivitiesGroup
	<navigation: 'All contained activities'>
	| pmActivityGroup |
	pmActivityGroup := PMActivityGroup 
		withAll: self containedActivities 
		withDescription: 'Artifacts contained in ', self printString.
	pmActivityGroup myModel: self myModel.
		
	^ pmActivityGroup.