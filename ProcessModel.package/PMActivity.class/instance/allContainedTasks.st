accessing
allContainedTasks
   | allContainedTasks |
   allContainedTasks := OrderedCollection new.
   self allContainedTaskDescriptors do: [ :taskDescriptor | 
	    allContainedTasks add: (taskDescriptor usedTask)
	].
	^ allContainedTasks.