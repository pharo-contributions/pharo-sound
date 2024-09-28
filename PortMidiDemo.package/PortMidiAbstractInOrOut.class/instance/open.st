accessing
open

	stream ifNotNil: [
		self error: 'can''t open a stream twice' "I don't think it's wise to do to much behind te scenes here" ].
	stream := self pmLib createNewPointerForStreamWithType: 'void**'.
	^self.