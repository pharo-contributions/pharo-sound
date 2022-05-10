menu
setMaxVal

	| newMaxVal |
	newMaxVal := UIManager default
		request: 'Maximum value?' translated
		initialAnswer: maxVal printString.
	newMaxVal isEmptyOrNil ifFalse: [
		maxVal := newMaxVal asNumber.
		minVal := minVal min: maxVal].
