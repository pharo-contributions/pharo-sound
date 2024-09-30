ffi calls
getErrorText: errnum

	^ self ffiCall: #( const char * Pm_GetErrorText #( int errnum ) )