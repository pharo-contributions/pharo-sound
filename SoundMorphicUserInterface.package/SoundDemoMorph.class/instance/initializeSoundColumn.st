initialization
initializeSoundColumn
"initialize the receiver's soundColumn"
	soundColumn := AlignmentMorph newColumn.
	soundColumn enableDragNDrop.
	self addMorphBack: soundColumn