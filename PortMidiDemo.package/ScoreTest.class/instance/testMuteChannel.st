tests
testMuteChannel
	| aScore |
	aScore := Score new.
	aScore addTrack: InstrumentScore new named: #Bass.
	aScore addTrack: (InstrumentScore new) named: #Guitar.
	aScore muteChannel: 1.
	self assert: ( aScore tracks at: #Bass ) muted equals: true.
	self assert: ( aScore tracks at: #Guitar ) muted equals: false.