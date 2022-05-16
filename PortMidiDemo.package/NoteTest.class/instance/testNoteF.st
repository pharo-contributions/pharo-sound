tests
testNoteF
	| aNote |
	aNote := NoteF new.
	self assert: aNote noteName equals: 'F'.
	self assert: aNote noteValue equals: 5