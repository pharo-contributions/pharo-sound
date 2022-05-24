outputManagement
closeMidiOut
	"Close the MidiOUT stream (where the score player sends notes)."
	^ PortMidiLibrary uniqueInstance portMidiCloseIOStream: midiOut value