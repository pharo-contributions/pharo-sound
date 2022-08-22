playing
singlePlayScore
	"Plays the score in another thread to be able to modify in live the score. Doesn't freeze the Pharo image while the score is being played."
	^ ['Start playing ...' traceCr.
		self singlePlay.
		self closeMidiOut.
		'Stop playing ...' traceCr] fork