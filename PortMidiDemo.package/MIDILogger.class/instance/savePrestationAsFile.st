as yet unclassified
savePrestationAsFile
	| file stream |
	file :=(logName, '.perf') asFileReference.
	file ensureDelete.
	stream := file writeStream.
	stream nextPutAll: log.
	stream flush;close.
"	file writeStreamDo: [ :stream | stream nextPutAll: log ]."
	