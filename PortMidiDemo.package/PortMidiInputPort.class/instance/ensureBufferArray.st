api
ensureBufferArray

	bufferArray ifNotNil: [ bufferArray isNull ifFalse: [ ^ self ] ].
	bufferArray := (FFIArray
		                ofType: PortMidiEvent
		                size: self bufferArraySizeOrDefault) new