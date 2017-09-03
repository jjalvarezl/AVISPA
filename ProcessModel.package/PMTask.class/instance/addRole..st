accessing
addRole: aRole
	(roles includes: aRole)
		ifFalse: [ roles add: aRole ]