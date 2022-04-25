tests
testWriteShortMessage
	"Tests if PortMidi library can write a single message in a MIDIout stream."

	| message result address |
	address := self instance createNewPointerForStreamWithType: 'void**'.

	result := self instance
		          openOutputForStream: address
		          withDevice: self output
		          withOutputDriverInfos: nil
		          withBufferSize: 2
		          withTimeProcedure: nil
		          withTimeInfos: nil
		          andLatency: 0.

	message := self instance
		           portMidiCreateMessageWithStatus: 16r90
		           withFirstData: 16r3C
		           andSecondData2: 16r40.

	self
		assert: (self instance
				 writeShortOn: address value
				 when: 0
				 theMessage: message)
		equals: 0.
	instance portMidiCloseIOStream: address value