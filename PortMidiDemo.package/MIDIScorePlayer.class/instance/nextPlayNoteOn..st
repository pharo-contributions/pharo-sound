noteManagement
nextPlayNoteOn: aNote
	"Creates and send a message noteOn for aNote."
	| instance message |
	instance := PortMidiLibrary uniqueInstance.
	message := self createNoteOnFor: aNote.
	^ instance writeShortOn: self midiOut value when: 0 theMessage: message