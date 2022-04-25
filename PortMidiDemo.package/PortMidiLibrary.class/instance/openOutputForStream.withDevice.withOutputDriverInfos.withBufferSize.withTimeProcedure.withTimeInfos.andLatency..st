libraryManaging
openOutputForStream: aStream withDevice: outputDeviceID withOutputDriverInfos: infos withBufferSize: outputBufferSize withTimeProcedure: timeProcedure withTimeInfos: timeInfos andLatency: latency
	"Calls the PortMidi C library method that open an MIDI output where aStream is a pointer that receives a pointer to the newly opened stream, outputDeviceID is the device to open. Parameters infos, timeProcedure and timeInfos are optional."
	^ self ffiCall: #( int Pm_OpenOutput( void** aStream, int outputDeviceID, void* infos, uint outputBufferSize, void* timeProcedure, void* timeInfos, uint latency ) )