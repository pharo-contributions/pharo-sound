playing
newPlay
	"Plays scores at the same time. Freezes the Pharo image while the score is being played."
	versions add: score.
	
	firstStartTime := Time millisecondClockValue.
	startTime := Time millisecondClockValue.
	[ true ] whileTrue: [
			(self score doneTracks size = self score tracks size) ifTrue: [ 
				Transcript show: 'reset score'; cr.
				self wrapper ifNotNil: [ self wrapper resetScore ] ifNil: [ self score resetScore ].
				startTime := Time millisecondClockValue.
				score modified ifTrue: [
					self score modified: false.
					self score: (self versions at: currentVersionIndex)]].
			self score tracks do: [ :track |
				track muted ifFalse: [
						self playTrackEvents: track fromTime: startTime.
						self playTrackNoteOffEvents: track fromTime: startTime.
					 ]
				]
		 ].