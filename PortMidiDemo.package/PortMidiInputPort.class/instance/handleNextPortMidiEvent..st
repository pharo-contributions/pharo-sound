private
handleNextPortMidiEvent: pmEvent

	pmEvent isRealtimeEvent ifTrue: [
		self handleMessage: pmEvent messageBytes.
		^ self ].
	pmEvent isNormalEvent ifTrue: [
		sysexBuffer ifNotNil: [ "means the sysex message was somehow truncated. This is not considered an error; e.g., a missing EOX can result from the user disconnecting a MIDI cable during sysex transmission"
			sysexBuffer := nil ].
		self handleMessage: pmEvent messageBytes.
		^ self ].
	"Check if it's a SysEx start (0xF0)"
	pmEvent isSysexStartEvent ifTrue: [
		sysexBuffer := OrderedCollection new.
		sysexBuffer addAll: pmEvent messageBytes.
		^ self ].
	"Check if we are in the middle of receiving SysEx"
	sysexBuffer ifNotNil: [
		pmEvent isSysexEndEvent
			ifFalse: [ sysexBuffer addAll: pmEvent messageBytes ]
			ifTrue: [
				sysexBuffer addAll: pmEvent sysexEndingBytes.
				self handleMessage: sysexBuffer.
				sysexBuffer := nil ].
		^ self ].
	self error: 'unexpected midi input'