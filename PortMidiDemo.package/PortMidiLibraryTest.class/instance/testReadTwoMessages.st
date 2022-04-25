messagesManagement
testReadTwoMessages
	| outputAddr inputAddr noteOn noteOff buffer result status data1 data2|
	instance := PortMidiLibrary uniqueInstance.
	input := instance getDefaultInputDeviceID.
	output := instance getDefaultOutputDeviceID.

	outputAddr := self instance createNewPointerForStreamWithType: 'void**'.

	self instance
		openOutputForStream: outputAddr
	   withDevice: output
	   withOutputDriverInfos: nil
	   withBufferSize: 2
	   withTimeProcedure: nil
	   withTimeInfos: nil
	   andLatency: 0.

	inputAddr := self instance createNewPointerForStreamWithType: 'void**'.

	self instance 
		openInputForStream: inputAddr 
		withDevice: input 
		withInputDriverInfos: nil 
		withBufferSize: 100
		withTimeProcedure: nil 
		andTimeInfos: nil.
		
	buffer := PortMidiEvent new.

	noteOn := self instance
	           portMidiCreateMessageWithStatus: 16r90
	           withFirstData: 16r3C
	           andSecondData2: 16r40.

	self instance 
		writeShortOn: outputAddr value 
		when: 0 
		theMessage: noteOn.
		
	
	noteOff := self instance
	           portMidiCreateMessageWithStatus: 16r80
	           withFirstData: 16r3C
	           andSecondData2: 16r00.

	self instance 
		writeShortOn: outputAddr value 
		when: 0 
		theMessage: noteOff.
	
	self instance portTimeSleep: 1.

	result := self instance 
					readOn: inputAddr value
					inBuffer: buffer 
					withSize: 1.
	
	status := self instance portMidiGetStatusFromMessage: buffer message.
	data1 := self instance portMidiGetFirstDataFromMessage: buffer message.
	data2 := self instance portMidiGetSecondDataFromMessage: buffer message.

	self instance portTimeSleep: 1.

	result := self instance 
					readOn: inputAddr value
					inBuffer: buffer 
					withSize: 1.
				
	self assert: status equals: 16r90.
	self assert: data1 equals: 16r3C.
	self assert: data2 equals: 16r40.	
	self assert: (self instance portMidiGetStatusFromMessage: buffer message) equals: 16r80.
	self assert: (self instance portMidiGetFirstDataFromMessage: buffer message) equals: 16r3C.
	self assert: (self instance portMidiGetSecondDataFromMessage: buffer message) equals: 16r00.

	self instance portMidiCloseIOStream: outputAddr value.
	self instance portMidiCloseIOStream: inputAddr value.