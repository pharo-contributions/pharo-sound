tests
testRemoveFromCurrentlyPlayed
	| aTrack aNote |
	aTrack := MIDITrack new.
	aNote := MIDINote new noteValue: 60.
	aTrack addToCurrentlyPlayed: aNote.
	self assert: (aTrack currentlyPlayed) size equals: 1.
	aTrack removeFromCurrentlyPlayed: aNote.
	self assert: (aTrack currentlyPlayed) size equals: 0