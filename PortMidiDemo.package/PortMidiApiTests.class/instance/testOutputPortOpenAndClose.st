tests
testOutputPortOpenAndClose

	| out |
	out := api outputPortNamed: self outputPortNameThatLoopsBack.
	out open.
	self assert: out isOpen.
	out close.
	self assert: out isOpen not