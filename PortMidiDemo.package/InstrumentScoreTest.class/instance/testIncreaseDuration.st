tests
testIncreaseDuration
	| aTrack notes |
	aTrack := InstrumentScore new.
	notes := OrderedCollection new.
	3 timesRepeat: [ 
		notes add: (MIDINote new note: NoteC new; octave: MIDINote defaultOctave; duration: MIDINote defaultDuration).
		 ].
	aTrack addAllToTrack: notes.
	aTrack track do: [ :each |
			self assert: each duration equals: MIDINote defaultDuration
		 ].
	aTrack increaseDuration.
	aTrack track do: [ :each |
			self assert: each duration equals: MIDINote defaultDuration * 2
		 ].
	