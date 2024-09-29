accessing
open

	stream ifNotNil: [ self error: 'this port is already open' ].
	stream := self pmLib createNewPointerForStreamWithType: 'void**'.
	^ self