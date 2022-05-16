tests
testAddNoteToMelody
	| aNote aScore |
	aNote := NoteNotation new note: NoteF new;
		duration: 1000.
	aScore := Score new tempo: 60.
	aScore addNoteToMelody: aNote.
	self assert: (aScore melody at:1) note noteName equals: 'F'