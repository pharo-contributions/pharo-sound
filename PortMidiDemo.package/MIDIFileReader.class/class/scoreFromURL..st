instance creation
scoreFromURL: urlString

	| data |
	data := ZnClient new accept: 'audio/midi'; get: urlString.
	data binary.
	^ (self new readMIDIFrom: data) asScore.
