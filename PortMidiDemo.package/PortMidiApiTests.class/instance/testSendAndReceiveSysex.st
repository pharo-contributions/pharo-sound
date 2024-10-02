tests
testSendAndReceiveSysex

	| received out in sendResult msg |
	out := api outputPortNamed: self outputPortNameThatLoopsBack.
	out open.
	in := api inputPortNamed: self inputPortNameThatLoopsBack.
	in onMessageReceiveDo: [ :ev | received := ev ].
	msg := #[16rF0 10 11 12 13 14 15 16 17 18 19 20 16rF7]. 
	sendResult := out sendMessage: msg.
	3 milliSeconds wait.
	self assert: received notNil.
	self assert: received asByteArray equals: msg .
	out close.
	in close