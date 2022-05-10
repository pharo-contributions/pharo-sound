accessing
codecClassName: aStringOrSymbol

	| label |
	codecClassName := aStringOrSymbol asSymbol.
	self removeAllMorphs.
	label := StringMorph contents: aStringOrSymbol.
	label position: self position + (5@5).
	self addMorph: label.
	label lock: true.
	self extent: label extent + (10@10).
