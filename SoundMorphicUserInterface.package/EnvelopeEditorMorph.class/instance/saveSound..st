menu
saveSound: evt
	| newName |
	newName := UIManager default request: 'Please confirm name for save...' translated
						initialAnswer: soundName.
	newName isEmptyOrNil ifTrue: [^ self].
	AbstractSound soundNamed: newName put: sound.
	soundName := newName.