private
writeSysEx: aMessage

	| result |
	aMessage pinInMemory.
	result := self interface
		          writeSysExOn: handle value
		          when: 0
		          theMessage: aMessage.
	aMessage unpinInMemory.
	result < 0 ifTrue: [
		self error: (self interface getErrorText: result) ]