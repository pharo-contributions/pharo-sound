noteManagement
nextPlayNote: aNote onChannel: aChannel during: aTime
	"Plays aNote during aTime milliseconds"
	| instance message |
	instance := PortMidiLibrary uniqueInstance.
	message := self createNoteOnFor: aNote onChannel: aChannel.
	instance writeShortOn: self midiOut value when: 0 theMessage: message.
	instance portTimeSleep: aTime.
	message := self createNoteOffFor: aNote onChannel: aChannel.
	^ instance writeShortOn: self midiOut value when: 0 theMessage: message