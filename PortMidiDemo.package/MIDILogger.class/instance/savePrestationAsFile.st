as yet unclassified
savePrestationAsFile
	| file |
	file :=(logName, '.perf') asFileReference.
	file ensureDelete.
	file writeStreamDo: [ :stream | stream nextPutAll: log ]
	