tests
testNoteE
	| aNote |
	aNote := NoteE new.
	self assert: aNote noteName equals: 'E'.
	self assert: aNote noteValue equals: 4