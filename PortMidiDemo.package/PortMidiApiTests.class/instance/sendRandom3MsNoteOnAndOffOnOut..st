private
sendRandom3MsNoteOnAndOffOnOut: out

	| p |
	p := 32 atRandom + 48.
	out sendMessage: {
			144.
			p.
			70 } asByteArray.
	3 milliSeconds wait.
	out sendMessage: {
			128.
			p.
			70 } asByteArray