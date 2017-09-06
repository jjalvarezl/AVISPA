initialization
initialize
	"Class constructor"
	super initialize.
	superActivities := OrderedCollection new.
	predecessors := OrderedCollection new.
	containedTaskDescriptors := OrderedCollection new.
	containedActivities := OrderedCollection new.
	
	"Metrics initializations"
	self numberOfContainedArtifacts.
	self numberOfContainedRoles.
	self numberOfContainedTasks.