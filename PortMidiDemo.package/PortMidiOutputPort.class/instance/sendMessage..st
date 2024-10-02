api
sendMessage: aByteArray

	aByteArray first = 16rF0 ifTrue: [
		self writeSysEx: aByteArray.
		^ self ].
	aByteArray size = 3 ifTrue: [
		self writeShortNow: (self interface
				 portMidiCreateMessageWithStatus: aByteArray first
				 withFirstData: aByteArray second
				 andSecondData2: aByteArray third).
		^ self ].
	self error: 'to be implemented'