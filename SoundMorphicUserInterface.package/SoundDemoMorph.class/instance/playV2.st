actions
playV2
	soundColumn submorphs size < 2
		ifTrue: [^ self].
	self
		setTimbreFromTile: (soundColumn submorphs second).
	(SampledSound bachFugueVoice2On: SampledSound new) playSilentlyUntil: 4.8;
		 resumePlaying