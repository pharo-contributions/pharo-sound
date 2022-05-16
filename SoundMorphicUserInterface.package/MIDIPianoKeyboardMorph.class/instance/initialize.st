initialization
initialize
"initialize the state of the receiver"
	super initialize.
""
	SimpleMIDIPort midiIsSupported
		ifTrue: [midiPort := SimpleMIDIPort openDefault].
	channel := 1.
	velocity := 100