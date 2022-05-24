tests
testTempo
	self assert: Score new tempo equals: 60.
	self assert: (Score new tempo: 120) tempo equals: 120