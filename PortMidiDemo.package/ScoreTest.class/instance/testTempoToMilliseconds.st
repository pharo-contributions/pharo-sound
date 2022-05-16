tests
testTempoToMilliseconds
	| aScore |
	aScore := Score new tempoToMilliseconds: 60.
	self assert: ( aScore tempo ) equals: 1000.
	aScore tempoToMilliseconds: 40.
	self assert: ( aScore tempo ) equals: 1500.
	aScore tempoToMilliseconds: 123.
	self assert: ( aScore tempo ) equals: 487.