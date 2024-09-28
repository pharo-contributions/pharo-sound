instance creation
open

	super open.
	self pmLib
		openInputForStream: stream
		withDevice: self id
		withInputDriverInfos: nil
		withBufferSize: 0 "PortMidi will take a default size if this size is 0"
		withTimeProcedure: nil
		andTimeInfos: nil 