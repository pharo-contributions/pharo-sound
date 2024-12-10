ffi calls
readOn: aStream inBuffer: buffer withSize: bufferSize
	"Calls the PortMidi C library method that read bufferSize MIDI message on aStream and stores it in buffer."
	"Returns number of events read or in case of error a negative int"
	^ self ffiCall: #( int Pm_Read(void* aStream, PortMidiEvent* buffer, int bufferSize) )