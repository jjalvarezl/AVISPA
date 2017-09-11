accessing
allContainedActivities
	| allContainedActivities |
	allContainedActivities := OrderedCollection new.
	
	containedActivities do: [ :pmActivity | 
		allContainedActivities := (allContainedActivities, (self allContainedActivities: pmActivity))
	].
	
	^ allContainedActivities.