instance creation
open

	super open.
	self interface
		openInputForStream: handle
		withDevice: self id
		withInputDriverInfos: nil
		withBufferSize: 0 "PortMidi will take a default size if this size is 0"
		withTimeProcedure: nil
		andTimeInfos: nil.
	handle isNull ifTrue: [ self error: 'something went wrong during the opening of the port' ]