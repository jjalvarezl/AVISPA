visualization
viewTaskRolesOn: view 
   view shape rectangle
	     width: [:each | each numberOfRoles * 5];
	     height: [:each | each numberOfRoles * 5].
   view nodes: self