accessing
allContainedRoles
   | allContainedRoles |
   allContainedRoles := OrderedCollection new.
	self allContainedTasks do: [ :pmTask |
		pmTask roles do: [ :pmRole |
			(allContainedRoles includes: pmRole)
				ifFalse: [ allContainedRoles add: pmRole ]
		]
	].
	^ allContainedRoles.