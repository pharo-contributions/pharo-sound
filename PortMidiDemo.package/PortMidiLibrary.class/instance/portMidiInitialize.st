libraryManagement
portMidiInitialize
	"Calls the PortMidi C library method that initializes the library."
	^ self ffiCall: #( int Pm_Initialize() )