tests
testCloseMidiOut
	| aPartition |
	aPartition := Partition new.
	aPartition openMidiOutWithDevice: PortMidiLibrary uniqueInstance getDefaultOutputDeviceID.
	self assert: aPartition closeMidiOut equals: 0