note playing
noteOfDuration: duration

	| note |
	note := self noteInScore.
	^ (owner scorePlayer instrumentForTrack: trackIndex)
			soundForMidiKey: note midiNote
			dur: duration
			loudness: (note velocity asFloat / 127.0)
