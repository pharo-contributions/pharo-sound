actions
midiTrackingLoop

	midiParser clearBuffers.
	[true] whileTrue: [
		self processMIDI ifFalse: [(Delay forMilliseconds: 5) wait]].
