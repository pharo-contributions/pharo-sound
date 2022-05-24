accessing
noteValue
	"Returns the real value of the note.
	Example : Note C = 0 with octave 6 := 60."
	^ 12 * (self octave - 1) + note noteValue