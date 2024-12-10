ffi calls
writeSysExOn: aStream when: timestamp theMessage: aByteArray

	^ self ffiCall: #( int Pm_WriteSysEx(void* aStream, int timestamp, uchar * aByteArray) )
