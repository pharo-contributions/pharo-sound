ffi calls
getCountDevices	
	"Calls the PortMidi C library method that get the default MIDI Output device available."
	^ self ffiCall: #( int Pm_CountDevices() )