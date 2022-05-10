file service
fileReaderServicesForFile: fullName suffix: suffix
	<fileService>
	
	^ (#('midi' 'mid') includes: suffix)
		ifTrue: [ self services ]
		ifFalse: [#()]