playing
playScore
	"Adds the original score to the log and plays the MIDI performance."
	self addScoreToLog.
	^ midiPlayer playScore.