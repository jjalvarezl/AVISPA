moose finder
containedActivitiesGroup
	<navigation: 'All contained activities'>
	| pmActivityGroup |
	pmActivityGroup := PMActivityGroup 
		withAll: self containedActivities 
		withDescription: 'Activities contained in ', self printString.
	pmActivityGroup myModel: self myModel.
		
	^ pmActivityGroup.