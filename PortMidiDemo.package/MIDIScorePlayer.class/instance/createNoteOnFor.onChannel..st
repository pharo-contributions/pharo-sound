noteManagement
createNoteOnFor: aNote onChannel: aChannel
	"Generates a noteOn message for aNote."
	^ PortMidiLibrary uniqueInstance portMidiCreateMessageWithStatus: 144 + aChannel withFirstData: aNote noteValue andSecondData2: self scoreVolume.