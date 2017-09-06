metrics
numberOfFollowingDependencesBetweenTasks
	<MSEProperty: #NDT type: #Number>
	<property: #NDT longName: 'Number of following dependences between tasks' description:
			'The number of following dependences between tasks'>
	| numberOfFollowingDependencesBetweenTasks |
	numberOfFollowingDependencesBetweenTasks := 0.
	self allContainedTasks do:[:pmTask | 
		numberOfFollowingDependencesBetweenTasks := numberOfFollowingDependencesBetweenTasks + (pmTask followingTasks size).
	].
			
	^ numberOfFollowingDependencesBetweenTasks