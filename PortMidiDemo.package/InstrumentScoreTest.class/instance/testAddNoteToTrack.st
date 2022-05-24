tests
testAddNoteToTrack
	| aNote aScore |
	aNote := MIDINote new note: NoteF new;
		duration: 1000.
	aScore := InstrumentScore new.
	aScore addNoteToTrack: aNote.
	self assert: (aScore track at:1) note noteName equals: 'F'