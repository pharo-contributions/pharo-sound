tests
testAddToCurrentlyPlayed
	| aTrack |
	aTrack := MIDITrack new.
	aTrack addToCurrentlyPlayed: (MIDINoteEvent new noteValue: 60).
	self assert: (aTrack currentlyPlayed) size equals: 1.