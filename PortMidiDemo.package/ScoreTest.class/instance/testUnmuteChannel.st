tests
testUnmuteChannel
	| aScore |
	aScore := Score new.
	aScore addTrack: InstrumentScore new named: #Bass.
	aScore addTrack: (InstrumentScore new) named: #Guitar.
	aScore muteChannel: 1.
	aScore muteChannel: 2.
	aScore unmuteChannel: 2.
	self assert: ( aScore tracks at: #Bass ) muted equals: true.
	self assert: ( aScore tracks at: #Guitar ) muted equals: false.