accessing
open

	handle ifNotNil: [ self error: 'this port is already open' ].
	handle := self interface createNewPointerForStreamWithType: 'void**'.
	^ self