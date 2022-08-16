tests
testAddNoteToTrack
	| aNote aTrack |
	aNote := MIDINoteEvent new noteValue: 71;
		duration: 1000.
	aTrack := MIDITrack new.
	aTrack addEventToTrack: aNote.
	self assert: (aTrack events at:1) noteValue equals: 71