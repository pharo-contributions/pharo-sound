private
outputPortNamed: aName

	^ PortMidiOut newForId: (self interface idOfOutputPortNamed: aName)