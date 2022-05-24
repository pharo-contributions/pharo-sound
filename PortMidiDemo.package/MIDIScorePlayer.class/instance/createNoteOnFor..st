noteManagement
createNoteOnFor: aNote
	"Generates a noteOn message for aNote."
	^ PortMidiLibrary uniqueInstance portMidiCreateMessageWithStatus: 16r90 withFirstData: aNote noteValue andSecondData2: self class defaultVolume.