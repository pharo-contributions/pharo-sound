tests
testNoteG
	| aNote |
	aNote := NoteG new.
	self assert: aNote noteName equals: 'G'.
	self assert: aNote noteValue equals: 7