services
ensureAdded: anPortMidiIn

	(inputs includes: anPortMidiIn) ifTrue: [ ^ self ].
	inputs add: anPortMidiIn.
	self ensurePollingRunning