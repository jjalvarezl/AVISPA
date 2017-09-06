visualization
viewIsolatedRolePattern
	<menuItem: 'Isolated Role Pattern' category: 'Avispa Error Patterns'>

   | v |
	v := RTView new. "titled: 'Multipurpose Tasks Pattern'."
	self viewIsolatedRolePatternOn: v.
	v openTitled:'Isolated Role Pattern'. 

	"| b |
	b := RTMondrian new."  "titled: 'Isolated Role Pattern'".
	"self viewIsolatedRolePatternOn: b."
	"b inspect"