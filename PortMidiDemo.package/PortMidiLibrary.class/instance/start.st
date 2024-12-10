ffi calls
start
	^ self ffiCall:  #( int Pt_Start(1, NULL, NULL) )