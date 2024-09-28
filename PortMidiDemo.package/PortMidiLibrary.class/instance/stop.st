ffi calls
stop
	^ self ffiCall:  #( int Pt_Stop() )