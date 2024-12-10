printing
printDirectionAndNameOn: ws

	self isNull ifTrue: [
		ws << '<null>'.
		^ self ].
	self isInput ifTrue: [ ws << 'input ' ].
	self isOutput ifTrue: [ ws << 'output ' ].
	ws << self getNameString