accessing-midi
mutedForChannel: channelIndex put: aBoolean

	^ (channels at: channelIndex) muted: aBoolean
