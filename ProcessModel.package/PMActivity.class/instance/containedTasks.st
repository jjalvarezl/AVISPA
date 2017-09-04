accessing
containedTasks
   | containedTasks |
   containedTasks := OrderedCollection new.
   containedTaskDescriptors do: [ :containedTaskDescriptor |
	    containedTasks add: (containedTaskDescriptor usedTask).
	].
	^ containedTasks.