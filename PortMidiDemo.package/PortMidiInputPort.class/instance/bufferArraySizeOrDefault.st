private
bufferArraySizeOrDefault

	^ self bufferArraySize ifNil: [ 10 "to be determined, just a wild guess here" ]