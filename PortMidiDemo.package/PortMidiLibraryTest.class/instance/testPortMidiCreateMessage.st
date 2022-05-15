messagesManagement
testPortMidiCreateMessage
	"Tests if PortMidi library can create a message from a status and two different datas."
	| message |
	message := self instance portMidiCreateMessageWithStatus: 16r90 withFirstData: 16r3C andSecondData2: 16r40.
	self assert: message equals: 4209808
	