actions
stopMIDITracking

	process ifNotNil: [
		process terminate.
		process := nil].
	SoundPlayer shutDown; initialize.  "revert to normal buffer size"
