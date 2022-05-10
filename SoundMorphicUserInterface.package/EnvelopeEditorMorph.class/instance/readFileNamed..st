menu
readFileNamed: fileName
	| snd |
	snd := self class evaluate: fileName asFileReference contents.
	soundName := fileName copyFrom: 1 to: fileName size-4. "---.fmp"
	self editSound: snd