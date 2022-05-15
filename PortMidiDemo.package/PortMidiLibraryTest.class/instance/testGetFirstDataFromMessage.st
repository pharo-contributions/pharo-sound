messagesManagement
testGetFirstDataFromMessage
	"Tests wether PortMidi library can get first data of a MIDI message or not."
	| message |
	message := self instance
		           portMidiCreateMessageWithStatus: 16r90
		           withFirstData: 16r3C
		           andSecondData2: 16r40.
	
	self assert: (self instance portMidiGetFirstDataFromMessage: message) equals: 16r3C