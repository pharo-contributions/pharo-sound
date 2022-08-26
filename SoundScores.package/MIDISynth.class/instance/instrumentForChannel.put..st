accessing-midi
instrumentForChannel: channelIndex put: aSoundProto

	(channels at: channelIndex) instrument: aSoundProto.
