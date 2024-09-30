api
sendMessage: aByteArray

	self writeShortNow: (self interface
			 portMidiCreateMessageWithStatus: aByteArray first
			 withFirstData: aByteArray second
			 andSecondData2: aByteArray third)