visualization
viewArtifactWithoutRoles
	| v |
	<menuItem: 'WorkProduct without roles' category: 'Avispa Error Patterns'>
	v := RTView new. "titled: 'WorkProduct without roles'."
	self viewArtifactWithoutRolesOn: v.
	"b inspect"
	v openTitled:'WorkProduct without Roles'.
	