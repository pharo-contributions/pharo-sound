tests
testCurrentlyPlayed
	| aTrack |
	aTrack := MIDITrack new.
	aTrack currentlyPlayed add: (MIDINoteEvent new noteValue: 60).
	self assert: (aTrack currentlyPlayed) size equals: 1.
	aTrack currentlyPlayed: OrderedCollection new.
	self assert: (aTrack currentlyPlayed) size equals: 0.