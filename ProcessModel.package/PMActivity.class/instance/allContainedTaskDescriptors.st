accessing
allContainedTaskDescriptors
   ((containedTaskDescriptors isNotEmpty) or: (containedActivities isEmpty))
		"ifTrue:  [(allContainedTaskDescriptors ifNil: [ OrderedCollection new ])]"
		ifFalse: [ containedActivities do: [ :containedActivity |
				containedTaskDescriptors := ( containedTaskDescriptors , (containedActivity allContainedTaskDescriptors))
			] 
		].
	^ containedTaskDescriptors.