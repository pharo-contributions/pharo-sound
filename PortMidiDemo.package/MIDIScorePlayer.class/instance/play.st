playing
play
	"Plays a MIDI performance as many times as desired."
	
	firstStartTime := Time millisecondClockValue.
	startTime := Time millisecondClockValue.
	[ true ] whileTrue: [
			(self score doneTracks size = self score tracks size) ifTrue: [ 
				self score doneTracks do: [ :each | Transcript show: each channel; cr. ].
				self score resetScore.
				(nextModificationIndex <= modifications size) ifTrue: [self applyNextModification].
				startTime := Time millisecondClockValue].
			self score tracks do: [ :track |
				(self score doneTracks includes: track) ifFalse: [ 
						track muted ifFalse: [
						self playTrackEvents: track fromTime: startTime.
						self playTrackNoteOffEvents: track fromTime: startTime.
					 ]
					 ]
				]
		 ].