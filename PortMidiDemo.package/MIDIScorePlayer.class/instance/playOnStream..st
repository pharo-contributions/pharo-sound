playing
playOnStream: aStream
	"Plays one time all scores at the same time."
	| instance |
	instance := PortMidiLibrary uniqueInstance.
	(self openMidiOutWithDevice: aStream) trace.
	
	instance start.
	[ instance getTime < 10000 ] whileTrue: [ 
			self score tracks do: [ :track |
					track muted ifFalse: [ 
							self playCurrentNote: track
						 ]
				]
		 ].
	instance stop.
	self closeMidiOut.