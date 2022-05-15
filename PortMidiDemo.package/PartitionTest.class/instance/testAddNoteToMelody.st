tests
testAddNoteToMelody
	| aNote aPartition |
	aNote := NoteNotation new note: Note newF;
		duration: 1000.
	aPartition := Partition new tempo: 60.
	aPartition addNoteToMelody: aNote.
	self assert: (aPartition melody at:1) note noteName equals: #('F')