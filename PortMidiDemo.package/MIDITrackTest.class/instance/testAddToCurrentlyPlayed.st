tests
testAddToCurrentlyPlayed
	| aTrack |
	aTrack := MIDITrack new.
	aTrack addToCurrentlyPlayed: (MIDINote new noteValue: 60).
	self assert: (aTrack currentlyPlayed) size equals: 1.