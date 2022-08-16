instance creation
newTrackWith: aNoteArray
	"Creates a new Score with aNoteArray and returns it."
	| aTrack |
	aTrack := self new.
	aNoteArray do: [ :value |
			aTrack addEventToTrack: (MIDINoteEvent new noteValue: value; duration: MIDINoteEvent defaultDuration )
		 ].
	^ aTrack