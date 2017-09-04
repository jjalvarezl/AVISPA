accessing
artifacts: aCollectionOfArtifacts
	artifacts := aCollectionOfArtifacts.
	aCollectionOfArtifacts do: [ :a | a myModel: self ]