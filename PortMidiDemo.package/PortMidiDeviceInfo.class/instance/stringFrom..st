accessing - structure variables
stringFrom: anOffset
| str index char |
	str := handle pointerAt: anOffset.
	index := 1.
	^ String streamContents: [ :string | 
		  [ (char := str at: index) = 0 ] whileFalse: [ 
			  index := index + 1.
			  string nextPut: (Character value: char) ] ]