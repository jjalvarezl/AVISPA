visualization
viewArtifactResponsibleRoles
	| v |
	<menuItem: 'WorkProduct Responsible Roles' category: 'Avispa Error Patterns'>
	v := RTView new. "titled: 'WorkProduct without roles'."
	self viewArtifactResponsibleRolesOn: v.
	"b inspect"
	v openTitled:'WorkProduct responsible roles'.
	