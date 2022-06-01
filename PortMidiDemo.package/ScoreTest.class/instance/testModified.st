tests
testModified
	| aScore |
	aScore := Score new.
	self assert: aScore modified equals: false.
	aScore modified: true.
	self assert: aScore modified equals: true