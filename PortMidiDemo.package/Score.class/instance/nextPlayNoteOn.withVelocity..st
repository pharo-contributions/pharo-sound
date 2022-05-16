noteManagement
nextPlayNoteOn: aNote withVelocity: aVelocity
	"Plays aNote with a defined intensity : sends a noteOn message and then a noteOff message."
	| instance message |
	instance := PortMidiLibrary uniqueInstance.
	message := self createNoteOnFor: aNote andVelocity: aVelocity.
	^ instance writeShortOn: self midiOut value when: 0 theMessage: message