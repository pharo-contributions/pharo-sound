createLogger
logger
	| logger |
	logger := MIDILogger new.
	logger midiPlayer setWrapper: logger.
	^ logger