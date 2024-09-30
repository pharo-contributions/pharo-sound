private
bufferAsByteArray

	| msg |
	msg := buffer message.
	^ {
		  (self interface portMidiGetStatusFromMessage: msg).
		  (self interface portMidiGetFirstDataFromMessage: msg).
		  (self interface portMidiGetSecondDataFromMessage: msg) }
		  asByteArray