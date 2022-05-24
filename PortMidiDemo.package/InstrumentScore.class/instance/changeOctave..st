octaveManagement
changeOctave: anOctave 
	"Changes the octave of all notes."
	self track do: [ :each |
			each octave: anOctave
		 ]