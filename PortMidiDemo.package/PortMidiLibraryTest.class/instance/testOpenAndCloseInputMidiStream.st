tests
testOpenAndCloseInputMidiStream
	"Tests if PortMidi library can open and close a MIDI input stream from a MIDI input device ID."

	| infos ret address |
	instance := PortMidiLibrary uniqueInstance.
	instance portMidiInitialize.

	input := instance getDefaultInputDeviceID.
	infos := instance getDeviceInfo: input.
	
	address := self instance createNewPointerForStreamWithType: 'void**'.

	ret := instance
		       openInputForStream: address
		       withDevice: input
		       withInputDriverInfos: nil
		       withBufferSize: 2
		       withTimeProcedure: nil
		       andTimeInfos: nil.
	self assert: ret equals: 0.
	ret := instance portMidiCloseIOStream: address value.
	self assert: ret equals: 0. 
	





