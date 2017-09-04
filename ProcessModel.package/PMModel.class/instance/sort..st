helpers
sort: coll
	^ coll asSortedCollection: [:el1 :el2 | el1 mooseName < el2 mooseName]