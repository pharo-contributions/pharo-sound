accessing-midi
panForChannel: channelIndex put: newPan

	(channels at: channelIndex) pan: newPan.
