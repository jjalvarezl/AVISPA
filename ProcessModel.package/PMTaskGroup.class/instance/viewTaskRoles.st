visualization
viewTaskRoles
	| view |
	<menuItem: 'Roles in Tasks' category: 'Visualize'>
	view := RTView new.
	self viewTaskRolesOn: view.
	view openTitled:'Roles in Tasks'.