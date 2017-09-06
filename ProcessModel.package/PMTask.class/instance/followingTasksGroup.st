navigation
followingTasksGroup
	<navigation: 'Following tasks'>
	| pmTaskGroup |
	pmTaskGroup := PMTaskGroup
	   withAll: self followingTasks 
		withDescription: 'Tasks that must be accomplished after ', self printString.
	pmTaskGroup myModel: self myModel.
	
	^ pmTaskGroup.