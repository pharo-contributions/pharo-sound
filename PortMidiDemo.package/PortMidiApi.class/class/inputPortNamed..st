private
inputPortNamed: aName

	^ PortMidiOut newForId: (self interface idOfInputPortNamed: aName)