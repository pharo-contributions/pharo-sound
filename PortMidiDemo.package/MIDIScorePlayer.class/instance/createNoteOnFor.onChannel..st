noteManagement
createNoteOnFor: aNote onChannel: aChannel
	"Generates a noteOn message for aNote."
	^ PortMidiLibrary uniqueInstance portMidiCreateMessageWithStatus: 16r90 + aChannel withFirstData: aNote noteValue andSecondData2: self scoreVolume.