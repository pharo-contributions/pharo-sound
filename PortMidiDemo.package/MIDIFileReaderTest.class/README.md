To encode a midi file to serve as input for test: 

| encoded |
encoded := ZnBase64Encoder new encode: 
	('LETITBE.MID' asFileReference readStreamDo: [ :stream |  stream binary contents]).
	
To decode the encoded information 

MIDIFileReader new readMIDIFrom: (ZnBase64Encoder new decode: encoded) readStream.

