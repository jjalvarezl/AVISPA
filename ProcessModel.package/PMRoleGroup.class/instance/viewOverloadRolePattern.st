visualization
viewOverloadRolePattern
	<menuItem: 'Overload Role Pattern' category: 'Avispa Error Patterns'>

	| b |
	b := RTMondrian new.  "titled: 'Overload Role Pattern'."
	self viewOverloadPatternOn: b.
	b inspect