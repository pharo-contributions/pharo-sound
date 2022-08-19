playing
newPlay
	"Plays scores at the same time. Freezes the Pharo image while the score is being played."
	
	firstStartTime := Time millisecondClockValue.
	startTime := Time millisecondClockValue.
	[ true ] whileTrue: [
			(self score doneTracks size = self score tracks size) ifTrue: [ 
				Transcript show: 'reset score'; cr.
				self score resetScore.
				(nextModificationIndex <= modifications size) ifTrue: [self applyNextModification].
				startTime := Time millisecondClockValue].
			self score tracks do: [ :track |
				track muted ifFalse: [
						self playTrackEvents: track fromTime: startTime.
						self playTrackNoteOffEvents: track fromTime: startTime.
					 ]
				]
		 ].