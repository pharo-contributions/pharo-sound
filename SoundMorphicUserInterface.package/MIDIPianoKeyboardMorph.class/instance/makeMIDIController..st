layout
makeMIDIController: evt

	self world activeHand attachMorph:
		(MIDIControllerMorph new midiPort: midiPort).
