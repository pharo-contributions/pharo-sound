inputManagement
openPerformanceNamed: aFilePath
	| fileName |
	fileName := aFilePath substrings: '.'.
	self logName: (fileName at: 1).
	midiPlayer openPerformanceNamed: aFilePath