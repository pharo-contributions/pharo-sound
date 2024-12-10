tests
testSendAndReceive

	| events times out in |
	events := 0.
	times := 100.
	out := api outputPortNamed: self outputPortNameThatLoopsBack.
	out open.
	in := api inputPortNamed: self inputPortNameThatLoopsBack.
	in onMessageReceiveDo: [ :ev | events := events + 1 ].
	times timesRepeat: [ self sendRandom3MsNoteOnAndOffOnOut: out ].
	20 milliSeconds wait.
	self assert: events equals: times * 2.
	out close.
	in close