menu
readFromDisk: evt
	| menu |
	menu := MenuMorph new.
	(FileSystem workingDirectory files collect:[:e | (e basename endsWith: '.fmp') ]) do:
		[:fileName |
		menu add: fileName
			target: self selector: #readFileNamed:
			argument: fileName].
	menu popUpEvent: evt in: self world