navigation
followingTasksGroup
	<navigation: 'Following tasks'>
	
	^ PMTaskGroup 
		withAll: self followingTasks 
		withDescription: 'Tasks that must be accomplished after ', self printString