initialization
registerInFlapsRegistry
	"Register the receiver in the system's flaps registry"
	self environment
		at: #Flaps
		ifPresent: [:cl | cl registerQuad: #(SimpleSliderMorph		authoringPrototype		'Slider'			'A slider for showing and setting numeric values.')
						forFlapNamed: 'PlugIn Supplies'.
						cl registerQuad: #(SimpleSliderMorph		authoringPrototype		'Slider'			'A slider for showing and setting numeric values.')
						forFlapNamed: 'Supplies'.
						cl registerQuad: #(SimpleSliderMorph		authoringPrototype		'Slider'			'A slider for showing and setting numeric values.')
						forFlapNamed: 'Scripting']