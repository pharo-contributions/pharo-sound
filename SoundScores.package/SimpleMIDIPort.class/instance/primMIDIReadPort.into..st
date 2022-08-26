primitives
primMIDIReadPort: portNum into: byteArray
	"Read any available MIDI data into the given buffer (up to the size of the buffer) and answer the number of bytes read."

	<primitive: 'primitiveMIDIRead' module: 'MIDIPlugin'>
	self primitiveFailed.
