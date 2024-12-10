ffi calls
portMidiCloseIOStream: aStream
	"Calls the PortMidi C library method that close aStream."
	^ self ffiCall: #( int Pm_Close( void* aStream ) )