private
addButtonRow

	| r |
	r := AlignmentMorph newRow vResizing: #shrinkWrap.
	r addMorphBack: (self buttonName: 'Menu' translated action: #invokeMenu).
	r addMorphBack: (Morph new extent: 4@1; color: Color transparent).
	r addMorphBack: (self buttonName: 'Start' translated action: #start).
	r addMorphBack: (Morph new extent: 4@1; color: Color transparent).
	r addMorphBack: (self buttonName: 'Stop' translated action: #stop).
	r addMorphBack: (Morph new extent: 12@1; color: Color transparent).
	r addMorphBack: self makeStatusLight.
	self addMorphBack: r.
