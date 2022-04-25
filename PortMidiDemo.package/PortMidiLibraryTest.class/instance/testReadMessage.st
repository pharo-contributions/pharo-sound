tests
testReadMessage
	"Tests if PortMidi library can receive a MIDI message on a MIDIin stream and that each part of the message is well 	transmitted."
	
	| inputAddr outputAddr message buffer result |
	
	outputAddr := self instance createNewPointerForStreamWithType:'void**'.

	self instance
          openOutputForStream: outputAddr
          withDevice: self output
          withOutputDriverInfos: nil
          withBufferSize: 2
          withTimeProcedure: nil
          withTimeInfos: nil
          andLatency: 0.

	inputAddr := self instance createNewPointerForStreamWithType:'void**'.
	
	self instance 
			openInputForStream: inputAddr 
			withDevice: self input 
			withInputDriverInfos: nil 
			withBufferSize: 0 "PortMidi will take a default size if this size is 0"
			withTimeProcedure: nil 
			andTimeInfos: nil.
	
	buffer := PortMidiEvent new.

	message := self instance
		           portMidiCreateMessageWithStatus: 16r90
		           withFirstData: 16r3C
		           andSecondData2: 16r40.	
	
	self instance 
			writeShortOn: outputAddr value 
			when: 0 
			theMessage: message.
			
	self instance portTimeSleep: 1.
	
	result := self instance 
						readOn: inputAddr value
						inBuffer: buffer
						withSize: 1.
	
	self assert: result equals: 1.
	self assert: (self instance portMidiGetStatusFromMessage: buffer message) equals: 16r90.
	self assert: (self instance portMidiGetFirstDataFromMessage: buffer message) equals: 16r3C.
	self assert: (self instance portMidiGetSecondDataFromMessage: buffer message) equals: 16r40.	
		
	instance portMidiCloseIOStream: outputAddr value.
	instance portMidiCloseIOStream: inputAddr value.