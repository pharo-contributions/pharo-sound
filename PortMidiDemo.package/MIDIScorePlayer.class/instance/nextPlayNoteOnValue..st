noteManagement
nextPlayNoteOnValue: aNoteValue
	"Creates and send a message noteOn for aNote."
	| instance message |
	instance := PortMidiLibrary uniqueInstance.
	message := self createNoteOnWithValue: aNoteValue.
	^ instance writeShortOn: self midiOut value when: 0 theMessage: message