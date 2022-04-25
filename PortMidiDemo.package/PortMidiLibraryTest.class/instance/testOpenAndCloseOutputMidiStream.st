tests
testOpenAndCloseOutputMidiStream
	"Tests if PortMidi library can open and close a MIDI output stream from a MIDI output device ID."

	| infos ret address |
	instance := PortMidiLibrary uniqueInstance.
	instance portMidiInitialize.

	output := instance getDefaultOutputDeviceID.
	infos := instance getDeviceInfo: output.

	address := self instance createNewPointerForStreamWithType: 'void**'.

	ret := instance
		       openOutputForStream: address
		       withDevice: output
		       withOutputDriverInfos: nil
		       withBufferSize: 100
		       withTimeProcedure: nil
		       withTimeInfos: nil
		       andLatency: 0.

	self assert: ret equals: 0.
	ret := instance portMidiCloseIOStream: address value.

	self assert: ret equals: 0.
	instance portMidiTerminate