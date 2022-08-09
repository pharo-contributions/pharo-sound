playing
playCurrentNote: aTrack fromTime: aTime
	"Thanks to an index and a counter of time, it will play ( or not ) a note. This method is called in a loop while there is a note to play."
	| nextEvent|
	nextEvent := aTrack at: aTrack nextEventIndex.

	"( aTrack nextEventIndex > aTrack events size ) ifTrue: [ 
			aTrack resetTrack.
			(self score modified) ifTrue: [ 
					self score modified: false.
					self score: (self versions at: (self versions keys at: self currentVersionIndex))
				 ].
		 ]."
	
	( nextEvent time + aTime > Time millisecondClockValue ) ifTrue: [ 
		self nextPlayNoteOn: nextEvent onChannel: aTrack channel ].