primitives
primPortDirectionalityOf: portNum
	"Answer the platform-specific name for the given MIDI port."

	<primitive: 'primitiveMIDIGetPortDirectionality' module: 'MIDIPlugin'>
	self primitiveFailed.
