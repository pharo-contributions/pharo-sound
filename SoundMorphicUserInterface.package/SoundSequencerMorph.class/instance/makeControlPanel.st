private
makeControlPanel
	| bb cc |
	cc := Color black.
	bb := SimpleButtonMorph new target: self; borderColor: cc.
	controlPanel := AlignmentMorph newRow.
	bb := SimpleButtonMorph new target: self; borderColor: cc.
	controlPanel color: bb color; borderWidth: 0; layoutInset: 0.
	controlPanel hResizing: #shrinkWrap; vResizing: #shrinkWrap; extent: 5@5.
	bb := SimpleButtonMorph new target: self; borderColor: cc.
	controlPanel addMorphBack: (bb label: 'reset';	actionSelector: #reset).
	bb := SimpleButtonMorph new target: self; borderColor: cc.
	controlPanel addMorphBack: (bb label: 'stop';		actionSelector: #stop).
	bb := SimpleButtonMorph new target: self; borderColor: cc.
	controlPanel addMorphBack: (bb label: 'play';	actionSelector: #play).
