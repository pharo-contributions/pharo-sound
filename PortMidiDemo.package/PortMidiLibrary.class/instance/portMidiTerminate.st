ffi calls
portMidiTerminate
	"Calls the PortMidi C library method that terminates the library."
	^ self ffiCall: #( int Pm_Terminate() )