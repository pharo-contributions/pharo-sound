messagesManagement
portMidiGetSecondDataFromMessage: aMessage
	"Gets the second data of the MIDI message aMessage."
	^ (((aMessage) >> 16) & 16rFF)