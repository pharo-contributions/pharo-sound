adding
addChannelControlsFor: channelIndex

	| r divider col |
	r := self makeRow
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap.
	r addMorphBack: (self channelNumAndMuteButtonFor: channelIndex).
	r addMorphBack: (Morph new extent: 10@5; color: color).  "spacer"
	r addMorphBack: (self panAndVolControlsFor: channelIndex).

	divider := AlignmentMorph new
		extent: 10@1;
		borderWidth: 1;
		layoutInset: 0;
		borderColor: #raised;
		color: color;
		hResizing: #spaceFill;
		vResizing: #rigid.

	col := self lastSubmorph.
	col addMorphBack: divider.
	col addMorphBack: r.
