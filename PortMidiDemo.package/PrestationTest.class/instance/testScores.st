tests
testScores
	| aPrestation |
	aPrestation := Prestation new.
	self deny: aPrestation scores equals: nil.
	self assert: aPrestation scores size equals: 0