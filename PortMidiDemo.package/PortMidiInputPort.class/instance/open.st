api
open

	| tempHandle id |
	tempHandle := self newStreamHandle.
	id := self interface idOfInputPortNamed: self portName.
	self interface
		openInputForStream: tempHandle
		withDevice: id
		withInputDriverInfos: nil
		withBufferSize: 0
		withTimeProcedure: nil
		andTimeInfos: nil. "PortMidi will take a default size if this size is 0"
	tempHandle isNull
		ifFalse: [ handle := tempHandle ]
		ifTrue: [
		self error: 'something went wrong during the opening of the port' ]