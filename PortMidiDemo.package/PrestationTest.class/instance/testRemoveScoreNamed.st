tests
testRemoveScoreNamed
	| aPrestation |
	aPrestation := Prestation new.
	aPrestation addScore: Score new named: #(Bass).
	aPrestation removeScoreNamed: #(Bass).
	self assert: aPrestation scores size equals: 0