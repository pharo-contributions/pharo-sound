accessing-midi
volumeForChannel: channelIndex put: newVolume

	(channels at: channelIndex) masterVolume: newVolume.
