as yet unclassified
createNoteOnFor: aNote andVelocity: data2
	^ PortMidiLibrary uniqueInstance portMidiCreateMessageWithStatus: 16r90 withFirstData: aNote noteValue andSecondData2: data2.