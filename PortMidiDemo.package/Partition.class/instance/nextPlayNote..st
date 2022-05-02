noteManagement
nextPlayNote: aNote
	"Plays aNote with a defined intensity : sends a noteOn message and then a noteOff message."
	| instance message |
	instance := PortMidiLibrary uniqueInstance.
	message := self createNoteOnFor: aNote andVelocity: 16r40.
	((instance writeShortOn: self midiOut value when: 0 theMessage: message) = 0) ifTrue: [ 
		message := self createNoteOffFor: aNote andVelocity: 0.
		^ instance writeShortOn: self midiOut value when: 0 theMessage: message] 
	ifFalse: [ ^ -1 ]