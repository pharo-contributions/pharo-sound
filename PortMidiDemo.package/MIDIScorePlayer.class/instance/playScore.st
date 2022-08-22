playing
playScore
	"Plays the score in another thread to be able to modify in live the score. Doesn't freeze the Pharo image while the score is being played."
	PortMidiLibrary uniqueInstance portMidiInitialize.
	self openMidiOutWithDevice: 3.
	^ ['Start playing ...' traceCr.
		self newPlay.
		self closeMidiOut.
		'Stop playing ...' traceCr] fork