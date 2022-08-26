This is a first cut at a simple MIDI output port.

It was an example of play long time ago.

	SimpleMIDIPort useMIDIDeviceForOutput ifTrue: [
		[self openMIDIPort]
			on: Error
			do: [
				SimpleMIDIPort askForDefault.
				[self openMIDIPort]
					on: Error
					do: [
						self inform: 'Use of MIDI device is not working. Using custom synthesis.\Go to preferences to change again.' withCRs.
						SimpleMIDIPort useMIDIDeviceForOutput: false]]].

	self reset; resumePlaying.