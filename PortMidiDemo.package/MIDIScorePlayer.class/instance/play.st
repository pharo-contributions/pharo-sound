playing
play
	"Plays one time all scores at the same time."
	| instance |
	instance := PortMidiLibrary uniqueInstance.
	self versions add: self score.
	
	instance start.
	[ instance getTime < 120000 ] whileTrue: [ 
			"(self score modified) ifTrue: [ 
					self incrementVersionIndex.
					self score: (self versions at: self currentVersionIndex).
					self resetScore
				 ]."
			self score tracks do: [ :track |
					track muted ifFalse: [ 
							self playCurrentNote: track
						 ]
				]
		 ].
	instance stop