tests
testGetStatusFromMessage
	"Tests wether PortMidi library can get the status of a MIDI message or not."
	| message |
	message := self instance
		           portMidiCreateMessageWithStatus: 16r90
		           withFirstData: 16r3C
		           andSecondData2: 16r40.
	
	self assert: (self instance portMidiGetStatusFromMessage: message) equals: 16r90