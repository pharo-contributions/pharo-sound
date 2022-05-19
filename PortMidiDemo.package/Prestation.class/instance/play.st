playing
play
	| instance |
	instance := PortMidiLibrary uniqueInstance.
	
	instance start.
	[ instance getTime <= 5000 ] whileTrue: [ 
			self scores do: [ :score |
					score playCurrentNote
				]
		 ].
	instance stop