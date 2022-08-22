performanceFileManagement
savePrestationAsFile
	"Saves a MIDI performance in a file named with logName if it is not nil."
	| file stream |
	logName ifNotNil: [ 
			file :=(logName, '.perf') asFileReference.
			file ensureDelete.
			stream := file writeStream.
			stream nextPutAll: log.
			stream flush;close.
		 ].
	