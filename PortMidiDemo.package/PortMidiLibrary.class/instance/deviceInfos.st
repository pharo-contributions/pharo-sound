ioManagement
deviceInfos

	| results |
	results := OrderedCollection new.
	self deviceInfosDo: [ :idx :devInfo | results add: devInfo ].
	^ results