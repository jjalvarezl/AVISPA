moose finder
allContainedTasksGroup
	<navigation: 'All contained tasks'>
	   | pmTaskGroup |
	pmTaskGroup := PMTaskGroup 
		withAll: self allContainedTasks
		withDescription: 'All contained tasks in ', self printString.
	pmTaskGroup myModel: self myModel.
	^ pmTaskGroup