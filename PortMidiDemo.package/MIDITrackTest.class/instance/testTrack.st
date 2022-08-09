tests
testTrack
	| aTrack |
	aTrack := MIDITrack new.
	self assert: aTrack events isEmpty.
	aTrack events: #( C D E D C ).
	self assert: aTrack events equals: #( C D E D C )