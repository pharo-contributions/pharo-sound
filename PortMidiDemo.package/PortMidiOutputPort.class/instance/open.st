api
open

	| tempHandle id |
	tempHandle := self newStreamHandle.
	id := self interface idOfOutputPortNamed: self portName.
	self interface
		openOutputForStream: tempHandle
		withDevice: id
		withOutputDriverInfos: nil
		withBufferSize: 1
		withTimeProcedure: nil
		withTimeInfos: nil
		andLatency: 0.
	tempHandle isNull
		ifFalse: [ handle := tempHandle ]
		ifTrue: [
		self error: 'something went wrong during the opening of the port' ]