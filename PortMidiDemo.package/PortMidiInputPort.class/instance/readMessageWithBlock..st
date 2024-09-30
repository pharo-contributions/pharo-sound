private
readMessageWithBlock: aBlock

	| success |
	success := (self interface
		            readOn: handle value
		            inBuffer: buffer
		            withSize: 1) ~= 0.
	success ifTrue: [ aBlock value: self bufferAsByteArray ].
	^ success