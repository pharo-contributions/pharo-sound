tests
testTimerCounter
	| aScore |
	aScore := InstrumentScore new.
	self assert: aScore timerCounter equals: 0.
	aScore timerCounter: 500.
	self assert: aScore timerCounter equals: 500