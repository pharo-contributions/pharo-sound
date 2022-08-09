tests
testUnmuteChannel
	| aScore |
	aScore := NewMIDIScore new.
	aScore addTrack: MIDITrack new named: #Bass.
	aScore addTrack: (MIDITrack new) named: #Guitar.
	aScore muteChannel: 1.
	aScore muteChannel: 2.
	aScore unmuteChannel: 2.
	self assert: ( aScore tracks at: #Bass ) muted equals: true.
	self assert: ( aScore tracks at: #Guitar ) muted equals: false.