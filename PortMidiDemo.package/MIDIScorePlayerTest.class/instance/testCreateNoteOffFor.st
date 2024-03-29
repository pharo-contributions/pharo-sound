tests
testCreateNoteOffFor
	| noteOnMessage |
	noteOnMessage := MIDIScorePlayer new createNoteOffFor: (MIDINote new note: NoteC new; octave: 6).
	
	self assert: (instance portMidiGetStatusFromMessage: noteOnMessage) equals: 16r80.
	self assert: (instance portMidiGetFirstDataFromMessage: noteOnMessage) equals: 16r3C.
	self assert: (instance portMidiGetSecondDataFromMessage: noteOnMessage) equals: 0.