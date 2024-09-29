services
open

	super open.
	self interface
		openOutputForStream: handle
		withDevice: self id
		withOutputDriverInfos: nil
		withBufferSize: 1
		withTimeProcedure: nil
		withTimeInfos: nil
		andLatency: 0.
	handle isNull ifTrue: [ self error: 'something went wrong during the opening of the port' ]