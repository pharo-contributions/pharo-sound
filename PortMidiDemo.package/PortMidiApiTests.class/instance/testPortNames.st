tests
testPortNames

	self assert:
		(api inputPortNames includes: self inputPortNameThatLoopsBack).
	self assert:
		(api outputPortNames includes: self outputPortNameThatLoopsBack)