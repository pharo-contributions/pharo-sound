messagesManagement
portMidiGetStatusFromMessage: aMessage
	"Gets the status of the MIDI message aMessage."
	^ ((aMessage) & 16rFF)