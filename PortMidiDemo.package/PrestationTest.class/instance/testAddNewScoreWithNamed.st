tests
testAddNewScoreWithNamed
	| aPrestation |
	aPrestation := Prestation new.
	aPrestation addNewScoreWith: #( C D E ) named: #( Test ).
	self assert: (aPrestation scores at: #( Test )) melody size equals: 3.
	self assert: ((aPrestation scores at: #( Test )) melody at: 1) note noteName equals: #C.
	self assert: ((aPrestation scores at: #( Test )) melody at: 2) note noteName equals: #D.
	self assert: ((aPrestation scores at: #( Test )) melody at: 3) note noteName equals: #E.