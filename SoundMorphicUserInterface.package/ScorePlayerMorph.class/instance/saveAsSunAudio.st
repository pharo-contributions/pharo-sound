menu
saveAsSunAudio
	"Create a stereo Sun audio file with the result of performing my score."

	| fileName |
	fileName := UIManager default request: 'New file name?' translated.
	fileName isEmptyOrNil ifTrue: [^ self].
	(fileName asLowercase endsWith: '.au') ifFalse: [
		fileName := fileName, '.au'].

	scorePlayer storeSunAudioOnFileNamed: fileName.
