noteManagement
nextPlayNoteOn: aNote
	| instance message |
	instance := PortMidiLibrary uniqueInstance.
	message := self createNoteOnFor: aNote andVelocity: 16r40.
	^ instance writeShortOn: self midiOut value when: 0 theMessage: message