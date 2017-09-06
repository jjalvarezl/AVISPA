visualization
viewOverloadRolePattern
	<menuItem: 'Overload Role Pattern' category: 'Avispa Error Patterns'>
   | v |
	v := RTView new. "titled: 'Multipurpose Tasks Pattern'."
	self viewOverloadPatternOn: v.
	v openTitled:'Overload Role Pattern'. 
	"| b |
	b := RTMondrian new."  "titled: 'Overload Role Pattern'."
	"self viewOverloadPatternOn: b.
	b inspect"