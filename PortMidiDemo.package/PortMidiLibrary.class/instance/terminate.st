ffi calls
terminate
	^ self ffiCall: #( int Pm_Terminate() )