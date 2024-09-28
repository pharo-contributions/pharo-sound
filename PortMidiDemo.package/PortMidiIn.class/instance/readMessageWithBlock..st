instance creation
readMessageWithBlock: aBlock

	| success |
	success := (self pmLib
		            readOn: self stream value
		            inBuffer: buffer
		            withSize: 1) ~= 0.
	success ifTrue: [aBlock value: buffer].
	^ success