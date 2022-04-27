as yet unclassified
createNoteOffFor: aNote andVelocity: data2
	^ PortMidiLibrary uniqueInstance portMidiCreateMessageWithStatus: 16r80 withFirstData: aNote noteValue andSecondData2: data2.