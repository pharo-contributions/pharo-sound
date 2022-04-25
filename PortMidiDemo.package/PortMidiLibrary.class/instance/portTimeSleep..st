portTimeManagement
portTimeSleep: numberOfMilliSeconds
	"Calls the PortMidi C library method that stops current thread for numberOfMilliSecionds."
	^ self ffiCall: #( void Pt_Sleep( int numberOfMilliSeconds ) )