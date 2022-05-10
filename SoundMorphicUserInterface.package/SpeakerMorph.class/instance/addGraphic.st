initialization
addGraphic

	| graphic |
	graphic := World drawingClass withForm: self speakerGraphic.
	graphic position: bounds center - (graphic extent // 2).
	self addMorph: graphic.
