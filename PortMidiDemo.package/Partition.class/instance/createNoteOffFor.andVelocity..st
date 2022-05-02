noteManagement
createNoteOffFor: aNote andVelocity: data2
	"Generates a noteOff message for aNote and note intencity data2"
	^ PortMidiLibrary uniqueInstance portMidiCreateMessageWithStatus: 16r80 withFirstData: aNote noteValue andSecondData2: data2.