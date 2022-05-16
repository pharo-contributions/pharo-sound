menu
saveToDisk: evt
	| newName f |
	newName := UIManager default request: 'Please confirm name for save...' translated
						initialAnswer: soundName.
	newName isEmptyOrNil ifTrue: [^ self].
	f := FileStream newFileNamed: newName , '.fmp'.
	sound storeOn: f.
	f close