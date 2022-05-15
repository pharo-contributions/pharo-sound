tests
testNextPlayNoteDuring
	| aPartition noteC|
	aPartition := Partition new.
	aPartition openMidiOutWithDevice: instance getDefaultOutputDeviceID.
	
	noteC := Note newC.
							
	self assert: (aPartition nextPlayNote: noteC during: 500) equals: 0.
	
	aPartition closeMidiOut