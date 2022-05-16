menus
addCustomMenuItems: aCustomMenu hand: aHandMorph

	super addCustomMenuItems: aCustomMenu hand: aHandMorph.
	midiPort
		ifNil: [aCustomMenu add: 'play via MIDI' translated action: #openMIDIPort]
		ifNotNil: [
			aCustomMenu add: 'play via built in synth' translated action: #closeMIDIPort.
			aCustomMenu add: 'new MIDI controller' translated action: #makeMIDIController:].
