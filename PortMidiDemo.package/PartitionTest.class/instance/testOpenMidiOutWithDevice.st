tests
testOpenMidiOutWithDevice
	| aPartition |
	aPartition := Partition new.
	self assert: (aPartition openMidiOutWithDevice: PortMidiLibrary uniqueInstance getDefaultOutputDeviceID) equals: 0.
	aPartition closeMidiOut.