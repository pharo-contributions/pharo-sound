testing
masterVolumeFindSettingsOn: aBuilder
	<systemsettings>
	(aBuilder range: #masterVolume)
		target: #SDL2SoundSink;
		label: 'Master Volume' translated;
		description: 'Set the master volume between 0 and 100 percent' translated;
		parent: #soundEnabled;
		default: 100;
		range: (0 to: 100)