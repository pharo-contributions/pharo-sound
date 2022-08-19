as yet unclassified
applyNextModification
	| nextModification |
	nextModification := modifications at: nextModificationIndex.
	(((Time millisecondClockValue - firstStartTime ) > nextModification time) and: nextModificationIndex <= modifications size) ifTrue: [ 
		nextModification executeEventWithPlayer: self.
		nextModificationIndex := nextModificationIndex + 1.
		"(nextModificationIndex <= modifications size)ifTrue:[nextModification := modifications at: nextModificationIndex.]"].
	^ self yourself