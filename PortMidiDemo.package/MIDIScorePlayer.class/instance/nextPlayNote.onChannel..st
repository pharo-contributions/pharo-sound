noteManagement
nextPlayNote: aNote onChannel: aChannel
	"Plays aNote : sends a noteOn message and then a noteOff message."
	| instance message |
	instance := PortMidiLibrary uniqueInstance.
	message := self createNoteOnFor: aNote onChannel: aChannel.
	((instance writeShortOn: self midiOut value when: 0 theMessage: message) = 0) ifTrue: [ 
		message := self createNoteOffFor: aNote.
		^ instance writeShortOn: self midiOut value when: 0 theMessage: message] 
	ifFalse: [ ^ -1 ]