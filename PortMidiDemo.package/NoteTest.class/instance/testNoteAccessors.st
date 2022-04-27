tests
testNoteAccessors
	| noteC |
	noteC := Note new 
		noteName: #( C );
		noteValue: 16r3C. "16r3C = 60 = C medium"
		
	self assert: noteC noteName equals: #( C ).
	self assert: noteC noteValue equals: 60