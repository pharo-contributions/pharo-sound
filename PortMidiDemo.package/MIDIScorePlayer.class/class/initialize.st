initialization
initialize

	DefaultVolume := 120.
	DefaultOutput := [
	                 PortMidiLibrary uniqueInstance
		                 getDefaultOutputDeviceID ]
		                 on: Error
		                 do: [ :ex | ex return ]