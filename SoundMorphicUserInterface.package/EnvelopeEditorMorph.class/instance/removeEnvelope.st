menu
removeEnvelope
	(self confirm: 'Really remove ' translated, envelope name , '?')
		ifFalse: [^ self].
	sound removeEnvelope: envelope.
	self editEnvelope: sound envelopes first.