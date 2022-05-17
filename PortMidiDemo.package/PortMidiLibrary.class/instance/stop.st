accessing
stop
	^ self ffiCall:  #( int Pt_Stop() )