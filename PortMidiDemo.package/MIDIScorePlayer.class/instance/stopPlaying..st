playing
stopPlaying: aPlayerProcess
	"Stops the score playing."
	'Stop playing ...' traceCr.
	self closeMidiOut.
	PortMidiLibrary uniqueInstance stop.
	^ aPlayerProcess terminate