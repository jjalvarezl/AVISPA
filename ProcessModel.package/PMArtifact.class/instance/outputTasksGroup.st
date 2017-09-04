navigation
outputTasksGroup
	<navigation: 'Output tasks'>
	
	^ (PMTaskGroup withAll: self outputTasks)
		myModel: self myModel;
		yourself