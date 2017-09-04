visualization
viewIsolatedRolePattern
	<menuItem: 'Isolated Role Pattern' category: 'Avispa Error Patterns'>

	| b |
	b := RTMondrian new.  "titled: 'Isolated Role Pattern'".
	self viewIsolatedRolePatternOn: b.
	b inspect