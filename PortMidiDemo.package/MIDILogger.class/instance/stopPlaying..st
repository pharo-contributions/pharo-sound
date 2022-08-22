playing
stopPlaying: aProcess
	"Stops the MIDI performance, adds the modifications made during the performance to the log and saves the log in a backup .perf file."
	midiPlayer stopPlaying: aProcess.
	self addModificationsToLog.
	self savePrestationAsFile