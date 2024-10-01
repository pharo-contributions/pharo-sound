private
handleNext4ByteMessage: midiMessage

	| statusByte |
	statusByte := midiMessage first.
	(statusByte between: 16rF8 and: 16rFF) ifTrue: [
		self handleRealtimeMessage: midiMessage.
		^ self ].
	"Check if it's a SysEx start (0xF0)"
	statusByte = 16rF0 ifTrue: [
		sysexBuffer := OrderedCollection new.
		sysexBuffer addAll: midiMessage.
		^ self ].
	"Check if we are in the middle of receiving SysEx"
	sysexBuffer ifNotNil: [
		| eoxIndex |
		"Check if the message ends with 0xF7"
		eoxIndex := midiMessage indexOf: 16rF7.
		eoxIndex isZero
			ifTrue: [ sysexBuffer addAll: midiMessage ]
			ifFalse: [
				sysexBuffer addAll: (midiMessage copyFrom: 1 to: eoxIndex).
				self handleSysexMessage: sysexBuffer.
				sysexBuffer := nil ].
		^ self ].
	"Otherwise, handle normal MIDI messages"
	sysexBuffer ifNil: [ self handleNormalMessage: midiMessage ]