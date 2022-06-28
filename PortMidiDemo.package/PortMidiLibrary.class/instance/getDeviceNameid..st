as yet unclassified
getDeviceNameid: aDeviceID
	| name type |
	"New method to get the name and the type of a device."
	name := (self uniqueInstance getDeviceInfo: aDeviceID ) name fromCString .
	(((self getDeviceInfo: aDeviceID ) input) = 1) ifTrue:  [ type := ' is input' ] ifFalse: [ type := ' is output' ].
	^ name , type.