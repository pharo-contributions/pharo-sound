as yet unclassified
pg_2024_09_28

	| pm loopPort out in noteOn noteOff |
	pm := PortMidiLibrary uniqueInstance.
	pm getCountDevices. "8"
	pm deviceInfos.
	pm inputPortNames. "an OrderedCollection('Scarlett 18i20 USB' 'SL GRAND Poort 1' 'SL GRAND Poort 2' 'IAC-besturingsbestand Bus 1')"
	pm outputPortNames. "an OrderedCollection('Scarlett 18i20 USB' 'SL GRAND Poort 1' 'SL GRAND Poort 2' 'IAC-besturingsbestand Bus 1')"
	pm nameOfPortWithId: 4. "'Scarlett 18i20 USB'"
	pm idOfInputPortNamed: pm inputPortNames last. "3"
	pm idOfOutputPortNamed: pm outputPortNames second. "5"

	loopPort := 'IAC-besturingsbestand Bus 1'. "Is external looping port"

	out := PortMidiOut newFromResolvedName: loopPort.
	out open.

	in := PortMidiIn newFromResolvedName: loopPort.
	in open in onMessageReceiveDo: [ :msg | msg crTrace ].

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

	in stopReceiving