noteManagement
createNoteOnFor: aNote andVelocity: data2
	"Generates a noteOn message for aNote and note intencity data2"
	^ PortMidiLibrary uniqueInstance portMidiCreateMessageWithStatus: 16r90 withFirstData: aNote noteValue andSecondData2: data2.