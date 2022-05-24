noteManagement
nextPlayNoteValue: aNoteValue
	"Plays aNoteValue : sends a noteOn message and then a noteOff message."
	| instance message |
	instance := PortMidiLibrary uniqueInstance.
	message := self createNoteOnWithValue: aNoteValue.
	((instance writeShortOn: self midiOut value when: 0 theMessage: message) = 0) ifTrue: [ 
		message := self createNoteOffWithValue: aNoteValue.
		^ instance writeShortOn: self midiOut value when: 0 theMessage: message] 
	ifFalse: [ ^ -1 ]