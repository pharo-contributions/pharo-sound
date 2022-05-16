initialization
addLoopPointControls

	| r m |
	r := AlignmentMorph newRow.
	r color: self color; borderWidth: 0; layoutInset: 0.
	r hResizing: #spaceFill; vResizing: #rigid; extent: 5@20; wrapCentering: #center; cellPositioning: #leftCenter.

	m := StringMorph new contents: 'Loop end: ' translated.
	r addMorphBack: m.
	m := UpdatingStringMorph new
		target: self; getSelector: #loopEnd; putSelector: #loopEnd:;
		growable: false; width: 50; step.
	r addMorphBack: m.

	m := StringMorph new contents: 'Loop length: ' translated.
	r addMorphBack: m.
	m := UpdatingStringMorph new
		target: self; getSelector: #loopLength; putSelector: #loopLength:;
		floatPrecision: 0.001;
		growable: false; width: 50; step.
	r addMorphBack: m.

	m := StringMorph new contents: 'Loop cycles: ' translated.
	r addMorphBack: m.
	m := UpdatingStringMorph new
		target: self; getSelector: #loopCycles; putSelector: #loopCycles:;
		floatPrecision: 0.001;
		growable: false; width: 50; step.
	r addMorphBack: m.

	m := StringMorph new contents: 'Frequency: ' translated.
	r addMorphBack: m.
	m := UpdatingStringMorph new
		target: self; getSelector: #perceivedFrequency; putSelector: #perceivedFrequency:;
		floatPrecision: 0.001;
		growable: false; width: 50; step.
	r addMorphBack: m.

	self addMorphBack: r.
