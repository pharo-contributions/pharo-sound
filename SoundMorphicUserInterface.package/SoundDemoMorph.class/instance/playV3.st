actions
playV3
	soundColumn submorphs size < 3
		ifTrue: [^ self].
	self
		setTimbreFromTile: (soundColumn submorphs third).
	(AbstractSound bachFugueVoice3On: SampledSound new) playSilentlyUntil: 14.4;
		 resumePlaying