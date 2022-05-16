tests
testNoteC
	| aNote |
	aNote := NoteC new.
	self assert: aNote noteName equals: 'C'.
	self assert: aNote noteValue equals: 0