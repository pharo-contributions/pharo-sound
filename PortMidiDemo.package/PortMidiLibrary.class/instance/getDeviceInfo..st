ffi calls
getDeviceInfo: aDevice
	"Calls the PortMidi C library method that returns a structure that contains informations about aDevice."
	^ self ffiCall: #( PortMidiDeviceInfo* Pm_GetDeviceInfo(int aDevice) )