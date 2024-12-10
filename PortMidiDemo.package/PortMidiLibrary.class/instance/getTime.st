ffi calls
getTime
	^ self ffiCall:  #( int Pt_Time() )