private
makeLevelMeter

	| outerBox |
	outerBox := BorderedMorph new extent: 125@14; color: Color lightGray.
	levelMeter := Morph new extent: 2@10; color: Color yellow.
	levelMeter position: outerBox topLeft + (2@2).
	outerBox addMorph: levelMeter.
	^ outerBox
