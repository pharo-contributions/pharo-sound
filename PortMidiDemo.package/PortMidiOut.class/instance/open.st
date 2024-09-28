services
open

	super open.
	self pmLib
		openOutputForStream: stream
		withDevice: self id
		withOutputDriverInfos: nil
		withBufferSize: 1024
		withTimeProcedure: nil
		withTimeInfos: nil
		andLatency: 0