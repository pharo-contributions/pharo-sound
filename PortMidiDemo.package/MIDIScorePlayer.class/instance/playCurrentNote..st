noteManagement
playCurrentNote: aTrack
	"Thanks to an index and a counter of time, it will play ( or not ) a note. This method is called in a loop while there is a note to play."
	| instance |
	( aTrack positionInScore > aTrack track size ) ifTrue: [ ^ self ].
	instance := PortMidiLibrary uniqueInstance.
	( aTrack timerCounter = 0 ) ifFalse: [
		( aTrack timerCounter > instance getTime ) ifTrue: [^ self].
		self nextPlayNoteOff: ( aTrack track at: aTrack positionInScore ).
		aTrack positionInScore: aTrack positionInScore + 1.
	 ].
	( aTrack positionInScore > aTrack track size ) ifTrue: [ ^ self ].
	aTrack timerCounter: aTrack timerCounter + ( aTrack track at: aTrack positionInScore ) duration.
	self nextPlayNoteOn: ( aTrack track at: aTrack positionInScore ).