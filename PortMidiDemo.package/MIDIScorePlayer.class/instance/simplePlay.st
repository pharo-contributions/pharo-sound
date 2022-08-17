playing
simplePlay
	"Plays a score one time."
	firstStartTime := Time millisecondClockValue.
	startTime := Time millisecondClockValue.
	[self score doneTracks size = self score tracks size] whileFalse: [
		self score tracks do: [ :track |
			track muted ifFalse: [
					self playTrackEvents: track fromTime: startTime.
					self playTrackNoteOffEvents: track fromTime: startTime.
				 ]
			]
		 ].