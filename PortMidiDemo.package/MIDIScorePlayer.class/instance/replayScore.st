playing
replayScore
	"Replays the score in another thread. Doesn't freeze the Pharo image while the score is being played."
	^ ['Start replaying ...' traceCr.
		self replay.
		self closeMidiOut.
		'Stop replaying ...' traceCr] fork