tests
testTempo
	self assert: Prestation new tempo equals: 60.
	self assert: (Prestation new tempo: 120) tempo equals: 120