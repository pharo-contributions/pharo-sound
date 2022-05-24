octaveManagement
increaseOctave
	"Increases the octave of all notes."
	self track do: [ :each |
			each octave: each octave + 1
		 ]