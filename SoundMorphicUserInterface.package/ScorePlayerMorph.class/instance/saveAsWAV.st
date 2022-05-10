menu
saveAsWAV
	"Create a stereo WAV audio file with the result of performing my score."

	| fileName |
	fileName := UIManager default request: 'New file name?' translated.
	fileName isEmptyOrNil ifTrue: [^ self].
	(fileName asLowercase endsWith: '.wav') ifFalse: [
		fileName := fileName, '.wav'].

	scorePlayer storeWAVOnFileNamed: fileName.
