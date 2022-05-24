octaveManagement
decreaseOctave
	"Decreases the octave of all notes."
	self track do: [ :each |
			( each octave = 1) ifTrue: [ ^ self ]
			ifFalse: [ 
					each octave: each octave - 1
				 ]
		 ]