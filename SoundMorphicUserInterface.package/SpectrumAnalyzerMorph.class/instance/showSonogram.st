private
showSonogram
	"Display a sonogram showing the frequency spectrum versus time."

	| zeros h w |
	displayType := 'sonogram'.
	self removeAllDisplays.
	h := fft n // 2.
	h := h min: 512 max: 64.
	w := 400.
	sonogramMorph :=
		SonogramMorph new
			extent: w@h
			minVal: 0.0
			maxVal: 1.0
			scrollDelta: w.
	zeros := Array new: sonogramMorph height withAll: 0.
	sonogramMorph width timesRepeat: [sonogramMorph plotColumn: zeros].
	self addMorphBack: sonogramMorph.
	self extent: 10@10.  "shrink to minimum size"
