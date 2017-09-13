navigation
outputTasksGroup
	<navigation: 'Tasks where this artifact is an output'>
	
	^ (PMTaskGroup withAll: self outputTasks)
		myModel: self myModel;
		yourself