private
updateDisplay
	"Update the display if any data is available."

	| buf bufCount |
	soundInput bufferCount = 0 ifTrue: [^ self].

	graphMorph ifNotNil: [
		[soundInput bufferCount > 0] whileTrue: [
			"skip to the most recent buffer"
			buf := soundInput nextBufferOrNil].
		^ self processBuffer: buf].

	sonogramMorph ifNotNil: [
		"at small buffer sizes we have to update the sonogram in
		 batches or we may get behind; shoot for 8 updates/second"
		bufCount := (soundInput samplingRate / (8 * soundInput bufferSize)) truncated max: 1.
		[bufCount > 0 and: [soundInput bufferCount > 0]] whileTrue: [
			self processBuffer: (soundInput nextBufferOrNil)]].
