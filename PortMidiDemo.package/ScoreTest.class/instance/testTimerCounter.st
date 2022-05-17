tests
testTimerCounter
	| aScore |
	aScore := Score new.
	self assert: aScore timerCounter equals: 0.
	aScore timerCounter: 500.
	self assert: aScore timerCounter equals: 500