menu
setMinVal

	| newMinVal |
	newMinVal := UIManager default
		request: 'Minimum value?' translated
		initialAnswer: minVal printString.
	newMinVal isEmptyOrNil ifFalse: [
		minVal := newMinVal asNumber.
		maxVal := maxVal max: minVal].
