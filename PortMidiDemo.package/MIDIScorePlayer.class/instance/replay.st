playing
replay
	"Replays a musical prestation of this MIDIScorePlayer instance. If no modification was done on its score, it just plays normally the score."
	currentVersionIndex := 1.
	score := (versions at: currentVersionIndex).
	score resetScore.
	
	firstStartTime := Time millisecondClockValue.
	startTime := Time millisecondClockValue.
	[ true ] whileTrue: [
			(self score doneTracks size = self score tracks size) ifTrue: [ 
				Transcript show: 'reset score'; cr.
				(versions size = 1) ifFalse: [
					self checkForChange].
				self score resetScore.
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