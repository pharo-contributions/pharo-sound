ffi calls
initializePortMidi
	^ self ffiCall: #( int Pm_Initialize() )