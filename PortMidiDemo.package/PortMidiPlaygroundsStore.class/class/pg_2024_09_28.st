playgrounds-store
pg_2024_09_28

	| pm out in in2 noteOn noteOff |
	pm := PortMidiLibrary uniqueInstance.
	pm getCountDevices.
	pm deviceInfos.
	pm inputPortNames.
	pm outputPortNames.
	pm nameOfPortWithId: 4.
	pm idOfInputPortNamed: pm inputPortNames last.
	pm idOfOutputPortNamed: pm outputPortNames second.

	out := PortMidiOut newForPortNamed: 'IAC-besturingsbestand Bus 1'.
	out open.

	in := PortMidiIn newForPortNamed: 'SL GRAND Poort 1'.
	in onMessageReceiveDo: [ :msg | out writeShortNow: msg message ].

	in2 := PortMidiIn newForPortNamed: 'IAC-besturingsbestand Bus 1'.
	in2 onMessageReceiveDo: [ :msg | msg crTrace ].
	in2 close.

	noteOn := pm
		          portMidiCreateMessageWithStatus: 16r90
		          withFirstData: 16r3C
		          andSecondData2: 16r40.
	noteOff := pm
		           portMidiCreateMessageWithStatus: 16r80
		           withFirstData: 16r3C
		           andSecondData2: 16r00.
	out writeShortNow: noteOn.
	100 milliSeconds wait.
	out writeShortNow: noteOff.

	in close.
	out close.
	pm portMidiTerminate.
	PortMidiLibrary resetUniqueInstance