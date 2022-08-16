tests
testRemoveFromTrackAt
	| aNote aTrack |
	aNote := MIDINoteEvent new.
	aTrack := MIDITrack new.
	aTrack addEventToTrack: aNote.
	self assert: aTrack events size equals: 1.
	aTrack removeFromTrackAt: 1.
	self assert: aTrack events size equals: 0