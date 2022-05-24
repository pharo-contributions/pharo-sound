tests
testChangeVolume
	| aTrack notes |
	aTrack := InstrumentScore new.
	notes := OrderedCollection new.
	3 timesRepeat: [ 
		notes add: (MIDINote new note: NoteC new; octave: 5; duration: MIDINote defaultDuration).
		 ].
	aTrack addAllToTrack: notes.
	aTrack track do: [ :each |
			self assert: each velocity equals: MIDINote defaultVelocity
		 ].
	aTrack changeVolume: 45.
	aTrack track do: [ :each |
			self assert: each velocity equals: 45
		 ].
	