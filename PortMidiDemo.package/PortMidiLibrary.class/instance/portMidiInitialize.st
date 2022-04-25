libraryManaging
portMidiInitialize
	"Calls the PortMidi C library method that initialize the library."
	^ self ffiCall: #( int Pm_Initialize() )