accessing
sound: aSound

	sound := aSound.
	self setBalloonText: 'a sound of duration ',(sound duration roundTo: 0.1) printString,' seconds'.