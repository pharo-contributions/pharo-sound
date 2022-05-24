noteManagement
createNoteOnWithValue: aNoteValue
	"Generates a noteOn message with value aNoteValue."
	^ PortMidiLibrary uniqueInstance portMidiCreateMessageWithStatus: 16r90 withFirstData: aNoteValue andSecondData2: self scoreVolume.