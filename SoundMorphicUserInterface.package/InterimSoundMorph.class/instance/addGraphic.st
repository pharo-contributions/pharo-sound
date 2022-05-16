adding
addGraphic

	graphic := self speakerGraphic asMorph.
	graphic position: bounds center - (graphic extent // 2).
	self addMorph: graphic.