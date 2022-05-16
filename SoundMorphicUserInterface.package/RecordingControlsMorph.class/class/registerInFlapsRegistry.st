initialization
registerInFlapsRegistry
	"Register the receiver in the system's flaps registry"
	self environment
		at: #Flaps
		ifPresent: [:cl | cl registerQuad: #(RecordingControlsMorph	authoringPrototype	'Sound' 	'A device for making sound recordings.')
						forFlapNamed: 'PlugIn Supplies'.
						cl registerQuad: #(RecordingControlsMorph	authoringPrototype	'Sound' 	'A device for making sound recordings.')
						forFlapNamed: 'Widgets'.]