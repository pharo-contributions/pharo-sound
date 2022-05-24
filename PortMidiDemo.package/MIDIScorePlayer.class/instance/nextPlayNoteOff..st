noteManagement
nextPlayNoteOff: aNote
	"Creates and send a message noteOff for aNote."
	| instance message |
	instance := PortMidiLibrary uniqueInstance.
	message := self createNoteOffFor: aNote.
	^ instance writeShortOn: self midiOut value when: 0 theMessage: message