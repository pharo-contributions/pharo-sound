instance creation
newTrackWith: aNoteArray
	"Creates a new Score with aNoteArray and returns it."
	| aTrack |
	aTrack := self new.
	aNoteArray do: [ :value |
			aTrack addEventToTrack: (MIDINote new noteValue: value; duration: MIDINote defaultDuration )
		 ].
	^ aTrack