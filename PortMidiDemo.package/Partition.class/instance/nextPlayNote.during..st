as yet unclassified
nextPlayNote: aNote during: aTime
	| instance message |
	instance := PortMidiLibrary uniqueInstance.
	message := self createNoteOnFor: aNote andVelocity: 16r40.
	instance writeShortOn: self midiOut when: 0 theMessage: message.
	instance portTimeSleep: aTime.
	message := self createNoteOffFor: aNote andVelocity: 0.
	^ instance writeShortOn: self midiOut when: 0 theMessage: message