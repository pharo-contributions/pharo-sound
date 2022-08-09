tests
testMuteChannel
	| aScore |
	aScore := NewMIDIScore new.
	aScore addTrack: MIDITrack new named: #Bass.
	aScore addTrack: (MIDITrack new) named: #Guitar.
	aScore muteChannel: 1.
	self assert: ( aScore tracks at: #Bass ) muted equals: true.
	self assert: ( aScore tracks at: #Guitar ) muted equals: false.