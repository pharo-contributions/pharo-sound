noteManagement
nextPlayNote: aNote during: aTime
	"Plays aNote during aTime milliseconds"
	| instance message |
	instance := PortMidiLibrary uniqueInstance.
	message := self createNoteOnFor: aNote.
	instance writeShortOn: self midiOut value when: 0 theMessage: message.
	instance portTimeSleep: aTime.
	message := self createNoteOffFor: aNote.
	^ instance writeShortOn: self midiOut value when: 0 theMessage: message