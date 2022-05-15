messagesManagement
portMidiCreateMessageWithStatus: status withFirstData: data1 andSecondData2: data2
	"Creates a MIDI message with given status and data."
	^ (((data2) << 16) & 16rFF0000) | (((data1) << 8) & 16rFF00) | ((status) & 16rFF).