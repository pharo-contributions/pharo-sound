accessing
getTime
	^ self ffiCall:  #( int Pt_Time() )