ioManagement
outputPortNames

	| results |
	results := OrderedCollection new.
	self deviceInfosDo: [:idx :devInfo |
		devInfo isOutput ifTrue: [ results add: devInfo getNameString ] ].
	^ results