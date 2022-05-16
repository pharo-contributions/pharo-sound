layout
makeControls

	| bb r reverbSwitch onOffSwitch |
	bb := SimpleButtonMorph new
		target: self;
		borderColor: #raised;
		borderWidth: 2;
		color: color.
	r := AlignmentMorph newRow.
	r color: bb color; borderWidth: 0; layoutInset: 0.
	r hResizing: #shrinkWrap; vResizing: #shrinkWrap; extent: 5@5.
	r addMorphBack: (
		bb label: '<>';
			actWhen: #buttonDown;
			actionSelector: #invokeMenu).
	onOffSwitch := SimpleSwitchMorph new
		offColor: color;
		onColor: (Color r: 1.0 g: 0.6 b: 0.6);
		borderWidth: 2;
		label: 'On';
		actionSelector: #toggleOnOff;
		target: self;
		setSwitchState: false.
	r addMorphBack: onOffSwitch.
	reverbSwitch := SimpleSwitchMorph new
		offColor: color;
		onColor: (Color r: 1.0 g: 0.6 b: 0.6);
		borderWidth: 2;
		label: 'Reverb Disable';
		actionSelector: #disableReverb:;
		target: self;
		setSwitchState: SoundPlayer isReverbOn not.
	r addMorphBack: reverbSwitch.
	^ r
