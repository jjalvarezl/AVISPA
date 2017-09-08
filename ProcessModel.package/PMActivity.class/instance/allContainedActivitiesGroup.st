moose finder
allContainedActivitiesGroup
	<navigation: 'All contained activities'>
	| pmActivityGroup |
	pmActivityGroup := PMActivityGroup 
		withAll: self allContainedActivities 
		withDescription: 'Activities contained in ', self printString.
	pmActivityGroup myModel: self myModel.
		
	^ pmActivityGroup.