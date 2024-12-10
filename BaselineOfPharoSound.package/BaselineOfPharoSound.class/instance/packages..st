private - accessing
packages: spec

	spec package: 'Sound'.
	spec
		package: 'SoundMorphicUserInterface'
		with: [ spec requires: #( 'Sound' ) ].
	spec package: 'PortMidiDemo'