playing
replay
	"Replays a musical prestation of this MIDIScorePlayer instance. If no modification was done on its score, it just plays normally the score."
	| instance |
	instance := PortMidiLibrary uniqueInstance.
	self currentVersionIndex: 1.
	(self versions size = 1) ifTrue: [ self playScore ].
	
	instance start.
	[ instance getTime < 120000 ] whileTrue: [
			self checkForChange.
			self score tracks do: [ :track |
					track muted ifFalse: [ 
							self playCurrentNote: track
						 ]
				]
		 ].
	instance stop