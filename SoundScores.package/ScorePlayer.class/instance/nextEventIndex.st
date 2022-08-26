accessing
nextEventIndex

	^ self ticksSinceStart asFloat / (self durationInTicks max: 1)