tests
testAddAllToMelody
	| aScore notes |
	aScore := InstrumentScore new.
	notes := OrderedCollection new.
	3 timesRepeat: [ 
		notes add: (MIDINote new note: NoteC new; octave: 5; duration: 500).
		 ].
	aScore addAllToTrack: notes.
	self assert: aScore track size equals: 3