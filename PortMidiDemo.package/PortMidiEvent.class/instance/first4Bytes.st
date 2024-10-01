accessing - structure variables
first4Bytes  
	"It feels awkward to first convert to a long (see #message), 
	and then derive the bytes again with bit mask and shift operations, 
	while we can access them here directly"
	^handle copyFrom: 1 to: 4