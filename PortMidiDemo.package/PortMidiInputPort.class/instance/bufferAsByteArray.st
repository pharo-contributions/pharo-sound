private
bufferAsByteArray

	^ {
		  (self interface portMidiGetStatusFromMessage: buffer).
		  (self interface portMidiGetFirstDataFromMessage: buffer).
		  (self interface portMidiGetSecondDataFromMessage: buffer) }
		  asByteArray