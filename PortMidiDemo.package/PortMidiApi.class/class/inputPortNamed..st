private
inputPortNamed: aName

	^ PortMidiInputPort new
		  portName: aName;
		  yourself