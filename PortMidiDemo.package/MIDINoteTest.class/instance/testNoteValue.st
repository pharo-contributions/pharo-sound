tests
testNoteValue
	| aNote |
	aNote := MIDINote new.
	self assert: (aNote note: NoteC new) noteValue equals: 60.