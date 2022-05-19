noteManagement
playCurrentNote
	| instance |
	( self currentNoteIndex > self melody size ) ifTrue: [ ^ self ].
	instance := PortMidiLibrary uniqueInstance.
	( self timerCounter = 0 ) ifFalse: [
		( self timerCounter > instance getTime ) ifTrue: [^ self].
		self nextPlayNoteOff: ( self melody at: self currentNoteIndex ).
		self currentNoteIndex: self currentNoteIndex + 1.
	 ].
	( self currentNoteIndex > self melody size ) ifTrue: [ ^ self ].
	self timerCounter: self timerCounter + ( self melody at: self currentNoteIndex ) duration.
	self nextPlayNoteOn: ( self melody at: self currentNoteIndex ).