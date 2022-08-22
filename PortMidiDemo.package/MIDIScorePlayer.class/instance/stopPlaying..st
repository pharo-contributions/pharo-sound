playing
stopPlaying: aPlayerProcess
	"Stops the score playing."
	'Stop playing ...' traceCr.
	self closeMidiOut.
	PortMidiLibrary uniqueInstance portMidiTerminate.
	^ aPlayerProcess terminate