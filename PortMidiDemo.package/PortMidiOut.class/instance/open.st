services
open

	super open.
	self pmLib
		openOutputForStream: stream
		withDevice: self id
		withOutputDriverInfos: nil
		withBufferSize: 1
		withTimeProcedure: nil
		withTimeInfos: nil
		andLatency: 0.
	stream isNull ifTrue: [ self error: 'something went wrong during the opening of the port' ]