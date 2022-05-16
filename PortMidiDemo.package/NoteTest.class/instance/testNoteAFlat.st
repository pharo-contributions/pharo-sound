tests
testNoteAFlat
	| aNote |
	aNote := NoteAFlat new.
	self assert: aNote noteName equals: 'Ab'.
	self assert: aNote noteValue equals: 8