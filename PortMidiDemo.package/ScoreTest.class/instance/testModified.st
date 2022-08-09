tests
testModified
	| aScore |
	aScore := NewMIDIScore new.
	self assert: aScore modified equals: false.
	aScore modified: true.
	self assert: aScore modified equals: true