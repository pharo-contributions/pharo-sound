as yet unclassified
openMidiOutWithDevice: aDeviceID
	^ (aDeviceID = -1) ifFalse: 
		[PortMidiLibrary uniqueInstance openOutputForStream: midiOut  
															withDevice: aDeviceID 
															withOutputDriverInfos: nil 
															withBufferSize: 512 
															withTimeProcedure: nil 
															withTimeInfos: nil 
															andLatency: 0 ] ifTrue: [ ^ -1 ]