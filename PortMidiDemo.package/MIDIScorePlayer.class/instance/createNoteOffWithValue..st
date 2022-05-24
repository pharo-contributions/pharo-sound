noteManagement
createNoteOffWithValue: aNoteValue
	"Generates a noteOff message with value aNoteValue."
	^ PortMidiLibrary uniqueInstance portMidiCreateMessageWithStatus: 16r80 withFirstData: aNoteValue andSecondData2: 0.