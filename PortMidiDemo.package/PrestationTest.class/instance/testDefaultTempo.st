tests
testDefaultTempo
	self deny: Prestation DefaultTempo equals: nil.
	self assert: Prestation DefaultTempo equals: 60