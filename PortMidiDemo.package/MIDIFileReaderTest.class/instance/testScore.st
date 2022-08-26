resources
testScore

	| reader score |
	reader := MIDIFileReader new readMIDIFrom: (ZnBase64Encoder new decode: self  letitbeMidiEncoded) readStream.
	score := reader asScore.
	self assert: score tempoMap first tempo equals: 789470.
	self assert: score tempoMap first time equals: 0.