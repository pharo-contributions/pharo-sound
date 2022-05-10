driver selection
pickDriverClass
	self subclassesDo: [ :s | s isSuitable ifTrue: [ ^ s ] ].
	^ NullSoundDriver