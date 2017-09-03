visualization
viewDemandedWorkProductsPattern
	| view |
	<menuItem: 'Demanded Workproducts Pattern' category: 'Avispa Error Patterns'>
	view := RTView new  "titled: 'WorkProduct Blueprint'".
	self viewDemandedWorkProductPatternOn: view.
	view openTitled:'WorkProduct Blueprint'. 