tests
testDefaultTempo
	self deny: Score defaultTempo equals: nil.
	self assert: Score defaultTempo equals: 60