tests
testNextPlayNoteDuring
	| aPrestation aScore noteC|
	aPrestation := Prestation new.
	aPrestation openMidiOutWithDevice: instance getDefaultOutputDeviceID.
	
	aScore := Score new.
	aPrestation addScore: aScore named: #( FirstScore ).
	
	noteC := NoteNotation new note: NoteC new; octave: 6.
							
	self assert: (aScore nextPlayNote: noteC during: 500) equals: 0.
	
	aPrestation closeMidiOut