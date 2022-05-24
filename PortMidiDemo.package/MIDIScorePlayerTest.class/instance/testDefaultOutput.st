tests
testDefaultOutput
	self deny: MIDIScorePlayer defaultOutput equals: nil.
	self deny: MIDIScorePlayer defaultOutput equals: -1