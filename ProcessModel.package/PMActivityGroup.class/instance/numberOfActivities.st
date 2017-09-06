metrics
numberOfActivities
	<MSEProperty: #NA type: #Number>
	<property: #NA longName: 'Number of activities of the proces model' description:
			'The number of activities of the process model'>
	"| size |
	size := 0.
	self do: [ :pmArtifact | size := size +1 ].
	^ size."
	^ self size.