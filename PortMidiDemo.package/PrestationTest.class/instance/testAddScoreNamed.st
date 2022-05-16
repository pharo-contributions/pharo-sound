tests
testAddScoreNamed
	| aPrestation |
	aPrestation := Prestation new.
	aPrestation addScore: (Score new tempo: 120) named: #(Bass).
	self assert: aPrestation scores size equals: 1.
	self assert: (aPrestation scores at:#(Bass)) tempo equals: 60.
	aPrestation addScore: (Score new tempo: 90) named: #(Guitar).
	self assert: aPrestation scores size equals: 2.
	aPrestation addScore: (Score new tempo: 90) named: #(Bass).
	self assert: aPrestation scores size equals: 2.