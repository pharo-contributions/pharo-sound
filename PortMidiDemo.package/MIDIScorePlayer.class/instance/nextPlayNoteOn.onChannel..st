noteManagement
nextPlayNoteOn: aNote onChannel: aChannel
	"Creates and send a message noteOn for aNote."
	| instance message |
	instance := PortMidiLibrary uniqueInstance.
	message := self createNoteOnFor: aNote onChannel: aChannel.
	^ "instance writeShortOn: self midiOut value when: 0 theMessage: message"0