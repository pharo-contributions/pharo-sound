tests
testCreateNoteOnFor
	| noteOnMessage |
	noteOnMessage := MIDIScorePlayer new createNoteOnFor: (MIDINote new noteValue: 60).
	
	self assert: (instance portMidiGetStatusFromMessage: noteOnMessage) equals: 16r90.
	self assert: (instance portMidiGetFirstDataFromMessage: noteOnMessage) equals: 16r3C.
	self assert: (instance portMidiGetSecondDataFromMessage: noteOnMessage) equals: 16r78.