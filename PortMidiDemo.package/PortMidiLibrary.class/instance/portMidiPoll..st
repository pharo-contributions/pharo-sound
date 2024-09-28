ffi calls
portMidiPoll: aStream
	"Calls the PortMidi C library method that checks if there is a MIDI message to read on aStream."
	^self ffiCall: #( int Pm_Poll(void* aStream) )