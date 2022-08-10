playing
singlePlayWithTicks
	"Plays a score one time with MIDI ticks."
	firstStartTime := Time millisecondClockValue.
	startTime := Time millisecondClockValue.
	[self score doneTracks size = self score tracks size] whileFalse: [
		self checkForTempoChange.
		self score tracks do: [ :track |
			track muted ifFalse: [
					self playWithTicksTrackNoteOnEvents: track fromTime: startTime.
					self playWithTicksTrackNoteOffEvents: track fromTime: startTime.
				 ]
			]
		 ].