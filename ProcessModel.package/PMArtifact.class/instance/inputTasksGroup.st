navigation
inputTasksGroup
	<navigation: 'Tasks where this artifact is an input'>
	
	^ (PMTaskGroup withAll: self inputTasks)
		myModel: self myModel;
		yourself