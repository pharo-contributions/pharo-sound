private
readNextArrayBuffer

	| numberOfBuffersRead |
	numberOfBuffersRead := self interface
		                       readOn: handle value
		                       inBuffer: bufferArray
		                       withSize: self bufferArraySizeOrDefault.
	numberOfBuffersRead < 0 ifTrue: [
		self error: (self interface getErrorText: numberOfBuffersRead) ].
	1 to: numberOfBuffersRead do: [ :idx |
	self handleNext4ByteMessage: (bufferArray at: idx) first4Bytes ].
	^ numberOfBuffersRead > 0