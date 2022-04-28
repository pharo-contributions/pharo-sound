tests
testNextPlayNote
	| aPartition noteC|
	aPartition := Partition new.
	aPartition openMidiOutWithDevice: instance getDefaultOutputDeviceID.
	
	noteC := Note newC.
							
	self assert: (aPartition nextPlayNote: noteC) equals: 0.
	
	aPartition closeMidiOut