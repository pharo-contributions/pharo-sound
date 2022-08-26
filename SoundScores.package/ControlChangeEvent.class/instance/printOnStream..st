printing
printOnStream: aStream
	aStream
		print:'('; write:time;
		print:': ctrl['; write:control;
		print:']=';write:value;
		print:')'.
