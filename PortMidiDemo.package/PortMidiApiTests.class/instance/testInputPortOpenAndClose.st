tests
testInputPortOpenAndClose

	| in |
	in := api inputPortNamed: self inputPortNameThatLoopsBack.
	in open.
	self assert: in isOpen.
	in close.
	self assert: in isOpen not