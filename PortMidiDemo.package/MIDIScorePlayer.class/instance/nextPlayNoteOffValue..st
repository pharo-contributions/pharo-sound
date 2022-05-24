noteManagement
nextPlayNoteOffValue: aNoteValue
	"Creates and send a message noteOff for aNote."
	| instance message |
	instance := PortMidiLibrary uniqueInstance.
	message := self createNoteOffWithValue: aNoteValue.
	^ instance writeShortOn: self midiOut value when: 0 theMessage: message