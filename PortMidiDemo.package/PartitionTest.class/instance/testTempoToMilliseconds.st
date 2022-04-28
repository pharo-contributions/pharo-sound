tests
testTempoToMilliseconds
	| aPartition |
	aPartition := Partition new tempo: 60.
	self assert: ( aPartition tempo ) equals: 1000.
	aPartition tempo: 40.
	self assert: ( aPartition tempo ) equals: 1500.
	aPartition tempo: 123.
	self assert: ( aPartition tempo ) equals: 487.