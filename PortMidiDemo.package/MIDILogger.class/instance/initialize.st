initialization
initialize
	midiPlayer := MIDIScorePlayer new.
	midiPlayer wrapper: self.
	log := ''.
	logName := ''