tests
testNoteB
	| aNote |
	aNote := NoteB new.
	self assert: aNote noteName equals: 'B'.
	self assert: aNote noteValue equals: 11