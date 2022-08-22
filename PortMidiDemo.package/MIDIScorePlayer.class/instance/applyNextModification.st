modifications
applyNextModification
	| nextModification |
	nextModification := modifications at: nextModificationIndex.
	(((Time millisecondClockValue - firstStartTime ) > nextModification time) and: nextModificationIndex <= modifications size) ifTrue: [ 
		nextModification executeEventWithPlayer: self.
		nextModificationIndex := nextModificationIndex + 1].
	^ self yourself