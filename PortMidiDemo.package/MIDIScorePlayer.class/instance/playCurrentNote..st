playing
playCurrentNote: aTrack
	"Thanks to an index and a counter of time, it will play ( or not ) a note. This method is called in a loop while there is a note to play."
	| instance |
	( aTrack nextEventIndex > aTrack events size ) ifTrue: [ ^ self ].
	
	instance := PortMidiLibrary uniqueInstance.
	
	( aTrack timerCounter = 0 ) ifFalse: [
		( aTrack timerCounter > instance getTime ) ifTrue: [^ self].
		self nextPlayNoteOff: ( aTrack events at: aTrack nextEventIndex ) onChannel: aTrack channel.
		aTrack nextEventIndex: aTrack nextEventIndex + 1.
	 ].

	( aTrack nextEventIndex > aTrack events size ) ifTrue: [ 
			aTrack resetTrack.
			(self score modified) ifTrue: [ 
					self score modified: false.
					self score: (self versions at: (self versions keys at: self currentVersionIndex))
				 ].
		 ].
	
	( aTrack timerCounter = 0 ) 
		  ifTrue: [
			aTrack timerCounter: PortMidiLibrary uniqueInstance getTime + ( aTrack events at: aTrack nextEventIndex ) duration.
		]ifFalse: [
			aTrack timerCounter: aTrack timerCounter + ( aTrack events at: aTrack nextEventIndex ) duration.
		].
	self nextPlayNoteOn: ( aTrack events at: aTrack nextEventIndex ) onChannel: aTrack channel.