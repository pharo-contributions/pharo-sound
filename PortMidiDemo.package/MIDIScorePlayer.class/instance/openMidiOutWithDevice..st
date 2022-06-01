outputManagement
openMidiOutWithDevice: aDeviceID
	"Opens a new MidiOUT Stream with output device id aDeviceID to play notes."
	| instance |
	instance := PortMidiLibrary uniqueInstance.
	self midiOut: (instance createNewPointerForStreamWithType: 'void**').
	^ (aDeviceID = -1) ifFalse: 
		[instance openOutputForStream: midiOut  
															withDevice: aDeviceID 
															withOutputDriverInfos: nil 
															withBufferSize: 512 
															withTimeProcedure: nil 
															withTimeInfos: nil 
															andLatency: 0 ] ifTrue: [ ^ -1 ]