messagesManagement
advancedReadOn: aStream inBuffer: buffer withSize: bufferSize
	"Wait until there is a message to read and calls the PortMidi C Library method appropriate."
	[ (self portMidiPoll: aStream) = 1 ] whileFalse.
	^ self readOn: aStream inBuffer: buffer withSize: bufferSize 