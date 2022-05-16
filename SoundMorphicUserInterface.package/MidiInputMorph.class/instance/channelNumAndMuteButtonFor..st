private
channelNumAndMuteButtonFor: channelIndex

	| muteButton instSelector r |
	muteButton := SimpleSwitchMorph new
		onColor: (Color r: 1.0 g: 0.6 b: 0.6);
		offColor: color;
		color: color;
		label: 'Mute';
		target: midiSynth;
		actionSelector: #mutedForChannel:put:;
		arguments: (Array with: channelIndex).
	instSelector := PopUpChoiceMorph new
		extent: 95@14;
		contentsClipped: 'oboe1';
		target: self;
		actionSelector: #atChannel:from:selectInstrument:;
		getItemsSelector: #instrumentChoicesForChannel:;
		getItemsArgs: (Array with: channelIndex).
	instSelector arguments:
		(Array with: channelIndex with: instSelector).
	instrumentSelector at: channelIndex put: instSelector.

	r := self makeRow
		hResizing: #rigid;
		vResizing: #spaceFill;
		extent: 70@10.
	r addMorphBack:
		(StringMorph
			contents: channelIndex printString
			font: (TextStyle default fontOfSize: 24)).
	channelIndex < 10
		ifTrue: [r addMorphBack: (Morph new color: color; extent: 19@8)]  "spacer"
		ifFalse: [r addMorphBack: (Morph new color: color; extent: 8@8)].  "spacer"
	r addMorphBack: instSelector.
	r addMorphBack: (AlignmentMorph newRow color: color).  "spacer"
	r addMorphBack: muteButton.
	^ r
