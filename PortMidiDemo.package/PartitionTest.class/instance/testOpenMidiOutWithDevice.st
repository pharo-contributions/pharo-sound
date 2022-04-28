tests
testOpenMidiOutWithDevice
	| aPartition |
	aPartition := Partition new.
	self assert: (aPartition openMidiOutWithDevice: aPartition defaultOutput) equals: 0.
	aPartition closeMidiOut.