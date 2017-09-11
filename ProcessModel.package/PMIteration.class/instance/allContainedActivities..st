accessing
allContainedActivities: pmActivity
	| allContainedActivities |
	allContainedActivities := OrderedCollection new.
   (pmActivity containedActivities isEmpty)
		ifFalse: [ pmActivity containedActivities do: [ :containedActivity |
				allContainedActivities := ( allContainedActivities , (self allContainedActivities: containedActivity))
			] 
		].
	allContainedActivities add: pmActivity.
	^ allContainedActivities.