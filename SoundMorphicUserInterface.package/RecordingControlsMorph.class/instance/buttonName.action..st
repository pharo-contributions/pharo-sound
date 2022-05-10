other
buttonName: aString action: aSymbol

	^ SimpleButtonMorph new
		target: self;
		label: aString;
		actionSelector: aSymbol
