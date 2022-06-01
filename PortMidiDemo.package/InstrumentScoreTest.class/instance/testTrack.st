tests
testTrack
	| aTrack |
	aTrack := InstrumentScore new.
	self assert: aTrack track isEmpty.
	aTrack track: #( C D E D C ).
	self assert: aTrack track equals: #( C D E D C )