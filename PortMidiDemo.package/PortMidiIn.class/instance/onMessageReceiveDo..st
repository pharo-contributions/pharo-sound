instance creation
onMessageReceiveDo: aBlock

	process ifNotNil: [
		self error: 'only one handler block allowed for now...' ].
	buffer := PortMidiEvent new.
	process := [
	           [
	           | result |
	           result := self pmLib
		                     readOn: self stream value
		                     inBuffer: buffer
		                     withSize: 1.
	           result isZero ifFalse: [
		           aBlock value: buffer "should attempt to read immediately here" ].
	           1 milliSeconds wait ] repeat ] forkAt:
		           Processor timingPriority - 1