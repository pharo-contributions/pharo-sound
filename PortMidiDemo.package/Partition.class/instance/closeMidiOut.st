outputManagement
closeMidiOut
	"Close the MidiOUT stream (where the partition sends notes)."
	^ PortMidiLibrary uniqueInstance portMidiCloseIOStream: midiOut value