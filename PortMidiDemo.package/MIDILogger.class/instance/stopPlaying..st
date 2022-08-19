playing
stopPlaying: aProcess
	midiPlayer stopPlaying: aProcess.
	self addModificationsToLog.
	self savePrestationAsFile