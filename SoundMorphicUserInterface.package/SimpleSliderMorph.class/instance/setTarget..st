menu
setTarget: evt 
	| rootMorphs |
	rootMorphs := self world rootMorphsAt: evt hand targetOffset.
	target := rootMorphs size > 1
				ifTrue: [rootMorphs second]