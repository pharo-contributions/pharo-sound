outputManagement
closeMidiOut
	"Close the MidiOUT stream (where the score sends notes)."
	^ PortMidiLibrary uniqueInstance portMidiCloseIOStream: midiOut value