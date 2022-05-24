playing
play
	"Plays one time all scores at the same time."
	| instance |
	instance := PortMidiLibrary uniqueInstance.
	
	instance start.
	[ instance getTime <= 5000 ] whileTrue: [ 
			self score tracks do: [ :track |
					self playCurrentNote: track
				]
		 ].
	instance stop