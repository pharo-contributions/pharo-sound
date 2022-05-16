tests
testNoteA
	| aNote |
	aNote := NoteA new.
	self assert: aNote noteName equals: 'A'.
	self assert: aNote noteValue equals: 9