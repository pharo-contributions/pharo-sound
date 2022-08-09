tests
testAddNoteToTrack
	| aNote aTrack |
	aNote := MIDINote new noteValue: 71;
		duration: 1000.
	aTrack := MIDITrack new.
	aTrack addEventToTrack: aNote.
	self assert: (aTrack events at:1) noteValue equals: 71