services
remove: anPortMidiIn

	inputs remove: anPortMidiIn ifAbsent: [ nil ].
	inputs isEmpty ifTrue: [ self stopPolling ]