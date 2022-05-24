initialization
initialize
	"Sets a default octave to the note."
	self octave: self class defaultOctave.
	self velocity: self class defaultVelocity.
	self duration: self class defaultDuration