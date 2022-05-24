noteManagement
nextPlayNoteOff: aNote onChannel: aChannel
	"Creates and send a message noteOff for aNote."
	| instance message |
	instance := PortMidiLibrary uniqueInstance.
	message := self createNoteOffFor: aNote onChannel: aChannel.
	^ instance writeShortOn: self midiOut value when: 0 theMessage: message