tests
testNoteD
	| aNote |
	aNote := NoteD new.
	self assert: aNote noteName equals: 'D'.
	self assert: aNote noteValue equals: 2