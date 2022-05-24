tests
testAddAllToTrack
	| aTrack notes |
	aTrack := InstrumentScore new.
	notes := OrderedCollection new.
	3 timesRepeat: [ 
		notes add: (MIDINote new note: NoteC new; octave: 5; duration: 500).
		 ].
	aTrack addAllToTrack: notes.
	self assert: aTrack track size equals: 3