noteManagement
createNoteOffFor: aNote onChannel: aChannel
	"Generates a noteOn message for aNote."
	^ PortMidiLibrary uniqueInstance portMidiCreateMessageWithStatus: 128 + aChannel withFirstData: aNote noteValue andSecondData2: self scoreVolume.