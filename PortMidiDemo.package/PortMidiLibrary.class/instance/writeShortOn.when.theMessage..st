messagesManagement
writeShortOn: aStream when: timestamp theMessage: message
	"Calls the PortMidi C library method that write a MIDI message on aStream."
	^ self ffiCall: #( int Pm_WriteShort(void* aStream, int timestamp, int message) )