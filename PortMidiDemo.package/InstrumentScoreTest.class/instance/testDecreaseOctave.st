tests
testDecreaseOctave
	| aTrack notes |
	aTrack := InstrumentScore new.
	notes := OrderedCollection new.
	3 timesRepeat: [ 
		notes add: (MIDINote new note: NoteC new; octave: MIDINote defaultOctave; duration: MIDINote defaultDuration).
		 ].
	aTrack addAllToTrack: notes.
	aTrack track do: [ :each |
			self assert: each octave equals: MIDINote defaultOctave
		 ].
	aTrack decreaseOctave.
	aTrack track do: [ :each |
			self assert: each octave equals: MIDINote defaultOctave - 1
		 ].
	