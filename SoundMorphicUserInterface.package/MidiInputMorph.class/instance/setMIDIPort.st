initialization
setMIDIPort

	| portNum |
	portNum := SimpleMIDIPort outputPortNumFromUser.
	portNum ifNil: [^ self].
	midiPortNumber := portNum.
