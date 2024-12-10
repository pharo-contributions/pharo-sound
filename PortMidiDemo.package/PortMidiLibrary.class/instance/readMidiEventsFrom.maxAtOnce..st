ffi calls
readMidiEventsFrom: aStream maxAtOnce: maxAtOnce

	| buffer numberRead |
	buffer := (FFIArray ofType: PortMidiEvent size: maxAtOnce) new.
	numberRead := self
		              readOn: aStream
		              inBuffer: buffer
		              withSize: maxAtOnce.
	numberRead < 0 ifTrue: [ self error: 'something wrong' ].
	^ buffer asArray first: numberRead