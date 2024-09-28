ioManagement
inputPortNames

	| results |
	results := OrderedCollection new.
	self deviceInfosDo: [ :idx :devInfo |
		devInfo isInput ifTrue: [ results add: devInfo getNameString ] ].
	^ results