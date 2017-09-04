accessing-computed
superActivities
	| superActivitiesCollection |
	superActivitiesCollection := OrderedCollection new.
	self taskDescriptors do: [ :taskDescriptor | 
		taskDescriptor superActivities do: [ :superActivity |
			superActivitiesCollection add: superActivity
		] 
	].
	^ superActivitiesCollection.