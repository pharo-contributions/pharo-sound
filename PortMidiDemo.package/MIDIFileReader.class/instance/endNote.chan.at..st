track reading
endNote: midiKey chan: channel at: endTicks

	| evt |
	evt := activeEvents
		detect: [:e | (e midiNote = midiKey) and: [e channel = channel]]
		ifNone: [^ self].
	evt duration: (endTicks - evt time).
	activeEvents remove: evt ifAbsent: [].
