instance creation
onFileNamed: fileName
	"Answer an instance of me for playing the file with the given name."

	| f |
	f := fileName asFileReference.
	f exists ifFalse: [^ self error: 'could not open ', fileName].
	^ self new initStream: f headerStart: 0
