initialization
addButtonRows

	| r |
	r := AlignmentMorph newRow vResizing: #shrinkWrap.
	r addMorphBack: (self buttonName: 'Morph' translated action: #makeSoundMorph).
	r addMorphBack: (Morph new extent: 4@1; color: Color transparent).
	r addMorphBack: (self buttonName: 'Trim' translated action: #trim).
	r addMorphBack: (Morph new extent: 4@1; color: Color transparent).
	r addMorphBack: (self buttonName: 'Show' translated action: #show).
	self addMorphBack: r.

	r := AlignmentMorph newRow vResizing: #shrinkWrap.
	r addMorphBack: (self buttonName: 'Record' translated action: #record).
	r addMorphBack: (Morph new extent: 4@1; color: Color transparent).
	r addMorphBack: (self buttonName: 'Stop' translated action: #stop).
	r addMorphBack: (Morph new extent: 4@1; color: Color transparent).
	r addMorphBack: (self buttonName: 'Play' translated action: #playback).
	r addMorphBack: self makeStatusLight.
	self addMorphBack: r.
