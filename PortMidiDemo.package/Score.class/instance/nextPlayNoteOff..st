noteManagement
nextPlayNoteOff: aNote
	| instance message |
	instance := PortMidiLibrary uniqueInstance.
	message := self createNoteOffFor: aNote andVelocity: 0.
	^ instance writeShortOn: self midiOut value when: 0 theMessage: message