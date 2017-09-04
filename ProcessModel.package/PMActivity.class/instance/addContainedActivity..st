accessing
addContainedActivity: anActivity
	(containedActivities includes: anActivity)
       ifFalse: [ containedActivities add: anActivity].
	^ containedActivities.