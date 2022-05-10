initialization
addControls

	| slider bb r m |
	r := AlignmentMorph newRow.
	bb := SimpleButtonMorph new target: self; borderColor: Color black.
	r color: bb color; borderWidth: 0; layoutInset: 0.
	r hResizing: #shrinkWrap; vResizing: #shrinkWrap; extent: 5@5.
	r wrapCentering: #topLeft.
	bb := SimpleButtonMorph new target: self; borderColor: Color black.
	r addMorphBack: (bb label: 'X';					actionSelector: #delete).
	bb := SimpleButtonMorph new target: self; borderColor: Color black.
	r addMorphBack: (bb label: '<>'; actWhen: #buttonDown;
															actionSelector: #invokeMenu).
	bb := SimpleButtonMorph new target: self; borderColor: Color black.
	r addMorphBack: (bb label: 'Play' translated;				actionSelector: #play).
	bb := SimpleButtonMorph new target: self; borderColor: Color black.
	r addMorphBack: (bb label: 'Play Before' translated;		actionSelector: #playBeforeCursor).
	bb := SimpleButtonMorph new target: self; borderColor: Color black.
	r addMorphBack: (bb label: 'Play After' translated;			actionSelector: #playAfterCursor).
	bb := SimpleButtonMorph new target: self; borderColor: Color black.
	r addMorphBack: (bb label: 'Play Loop' translated;			actionSelector: #playLoop).
	bb := SimpleButtonMorph new target: self; borderColor: Color black.
	r addMorphBack: (bb label: 'Test' translated;				actionSelector: #playTestNote).
	bb := SimpleButtonMorph new target: self; borderColor: Color black.
	r addMorphBack: (bb label: 'Save' translated;				actionSelector: #saveInstrument).
	bb := SimpleButtonMorph new target: self; borderColor: Color black.
	r addMorphBack: (bb label: 'Set Loop End' translated;		actionSelector: #setLoopEnd).
	bb := SimpleButtonMorph new target: self; borderColor: Color black.
	r addMorphBack: (bb label: 'One Cycle' translated;			actionSelector: #setOneCycle).
	bb := SimpleButtonMorph new target: self; borderColor: Color black.
	r addMorphBack: (bb label: 'Set Loop Start' translated;		actionSelector: #setLoopStart).
	self addMorphBack: r.

	r := AlignmentMorph newRow.
	r color: self color; borderWidth: 0; layoutInset: 0.
	r hResizing: #spaceFill; vResizing: #rigid; extent: 5@20; wrapCentering: #center; cellPositioning: #leftCenter.

	m := StringMorph new contents: 'Index: ' translated.
	r addMorphBack: m.
	m := UpdatingStringMorph new
		target: graph; getSelector: #cursor; putSelector: #cursor:;
		growable: false; width: 71; step.
	r addMorphBack: m.

	m := StringMorph new contents: 'Value: ' translated.
	r addMorphBack: m.
	m := UpdatingStringMorph new
		target: graph; getSelector: #valueAtCursor; putSelector: #valueAtCursor:;
		growable: false; width: 50; step.
	r addMorphBack: m.

	slider := SimpleSliderMorph new
		color: color;
		extent: 200@2;
		target: self;
		actionSelector: #scrollTime:.
	r addMorphBack: slider.

	m := Morph new color: r color; extent: 10@5.  "spacer"
	r addMorphBack: m.
	m := UpdatingStringMorph new
		target: graph; getSelector: #startIndex; putSelector: #startIndex:;
		width: 40; step.
	r addMorphBack: m.

	self addMorphBack: r.

