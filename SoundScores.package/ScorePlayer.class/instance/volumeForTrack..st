accessing
volumeForTrack: i

	| vol |
	vol := (leftVols at: i) max: (rightVols at: i).
	^ (vol asFloat) roundTo: 0.0001
