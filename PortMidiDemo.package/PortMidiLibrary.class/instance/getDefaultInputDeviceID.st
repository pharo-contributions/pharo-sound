ioManagement
getDefaultInputDeviceID
	"Calls the PortMidi C library method that get the default MIDI Input device available."
	^ self ffiCall: #( int Pm_GetDefaultInputDeviceID() )