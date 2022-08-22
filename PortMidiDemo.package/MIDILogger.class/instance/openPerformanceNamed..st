performanceFileManagement
openPerformanceNamed: aFilePath
	"Opens the backup file and translates its content to create a performance."
	| fileName |
	fileName := aFilePath substrings: '.'.
	self logName: (fileName at: 1).
	midiPlayer openPerformanceNamed: aFilePath