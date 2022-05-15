messagesManagement
testPortMidiPoll
	| outputAddr inputAddr message |
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
			withBufferSize: 0 
			withTimeProcedure: nil 
			andTimeInfos: nil.
			
	self assert: (self instance portMidiPoll: inputAddr value) equals: 0.
			
	message := self instance
		           portMidiCreateMessageWithStatus: 16r90
		           withFirstData: 16r3C
		           andSecondData2: 16r40.	
	
	self instance 
			writeShortOn: outputAddr value 
			when: 0 
			theMessage: message.
			
	self instance portTimeSleep: 1.
	
	self assert: (self instance portMidiPoll: inputAddr value) equals: 1