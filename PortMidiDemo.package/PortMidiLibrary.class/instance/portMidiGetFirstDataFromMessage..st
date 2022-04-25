messagesManagement
portMidiGetFirstDataFromMessage: aMessage
	"Gets the first data of the MIDI message aMessage."
	^ (((aMessage) >> 8) & 16rFF)