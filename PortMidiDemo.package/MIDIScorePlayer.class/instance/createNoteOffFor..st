noteManagement
createNoteOffFor: aNote
	"Generates a noteOff message for aNote."
	^ PortMidiLibrary uniqueInstance portMidiCreateMessageWithStatus: 16r80 withFirstData: aNote noteValue andSecondData2: 0.