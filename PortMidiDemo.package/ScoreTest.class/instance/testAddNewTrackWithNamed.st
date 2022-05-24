tests
testAddNewTrackWithNamed
	| aScore |
	aScore := Score new.
	aScore addNewTrackWith: #( C D E ) named: #Test.
	self assert: (aScore tracks at: #Test) track size equals: 3.
	self assert: ((aScore tracks at: #Test) track at: 1) note noteName equals: #C.
	self assert: ((aScore tracks at: #Test) track at: 2) note noteName equals: #D.
	self assert: ((aScore tracks at: #Test) track at: 3) note noteName equals: #E.