tests
testEvents
	| aTrack |
	aTrack := MIDITrack new.
	aTrack events add: (MIDINote new noteValue: 60).
	self assert: (aTrack events) size equals: 1.
	aTrack events: OrderedCollection new.
	self assert: (aTrack events) size equals: 0.