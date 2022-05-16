tests
testNoteEFlat
	| aNote |
	aNote := NoteEFlat new.
	self assert: aNote noteName equals: 'Eb'.
	self assert: aNote noteValue equals: 3