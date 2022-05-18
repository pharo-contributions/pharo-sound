tests
testDefaultTempo
	self deny: Prestation defaultTempo equals: nil.
	self assert: Prestation defaultTempo equals: 60