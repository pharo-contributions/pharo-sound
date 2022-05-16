tests
testAddAllToMelody
	| aScore notes |
	aScore := Score new.
	notes := OrderedCollection new.
	3 timesRepeat: [ 
		notes add: (NoteNotation new note: NoteC new; octave: 5; duration: 500).
		 ].
	aScore addAllToMelody: notes.
	self assert: aScore melody size equals: 3