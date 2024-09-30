private
writeSysEx: aMessage

	| result |
	result := self interface
		          writeSysExOn: handle value
		          when: 0
		          theMessage: aMessage.

	result < 0 ifTrue: [
		self error: (self interface getErrorText: result) ]