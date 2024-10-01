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
	self handleNextPortMidiEvent: (bufferArray at: idx) ].
	^ numberOfBuffersRead > 0