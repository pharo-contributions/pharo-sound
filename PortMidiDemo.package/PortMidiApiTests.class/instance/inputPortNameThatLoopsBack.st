running
inputPortNameThatLoopsBack
	"To run this tests you need a midi port that loops the midi back"
	"maybe better to depend on an environment file instead of isMacOS/isWindows"
	OSPlatform current isMacOS ifTrue: [ ^'IAC-besturingsbestand Bus 1' ].
	OSPlatform current isWindows ifTrue: [ ^'loopMIDI Port 1 2' ].
	^self error: 'you to configure something here'
