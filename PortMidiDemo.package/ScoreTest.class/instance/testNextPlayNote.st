tests
testNextPlayNote
	| aPrestation aScore noteC|
	aPrestation := Prestation new.
	aPrestation openMidiOutWithDevice: instance getDefaultOutputDeviceID.
	
	aScore := Score new.
	aPrestation addScore: aScore named: #( FirstScore ).
	
	noteC := NoteNotation new note: NoteC new; octave: 6.
							
	self assert: (aScore nextPlayNote: noteC) equals: 0.
	
	aPrestation closeMidiOut