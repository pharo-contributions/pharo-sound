primitives
primPortNameOf: portNum
	"Answer the platform-specific name for the given MIDI port."

	<primitive: 'primitiveMIDIGetPortName' module: 'MIDIPlugin'>
	self primitiveFailed.
