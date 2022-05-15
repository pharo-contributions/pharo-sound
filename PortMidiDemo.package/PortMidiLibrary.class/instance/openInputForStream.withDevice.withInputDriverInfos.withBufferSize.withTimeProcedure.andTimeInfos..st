ioManagement
openInputForStream: aStream withDevice: inputDeviceID withInputDriverInfos: infos withBufferSize: inputBufferSize withTimeProcedure: timeProcedure andTimeInfos: timeInfos
	"Calls the PortMidi C library method that open an MIDI input where aStream is a pointer that receives a pointer to the newly opened stream, inputDeviceID is the device to open. Parameters infos, timeProcedure and timeInfos are optional."
	^ self ffiCall: #( int Pm_OpenInput( void** aStream, int inputDeviceID, void* infos, uint inputBufferSize, void* timeProcedure, void* timeInfos ) )