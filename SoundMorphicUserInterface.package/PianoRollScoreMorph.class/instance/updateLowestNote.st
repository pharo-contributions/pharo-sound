initialization
updateLowestNote
	"find the actual lowest note in the score"

	
	lowestNote := 128 - (self innerBounds height // 3).
	score tracks do: [:track | | n |
		1 to: track size do: [:i |
			n := track at: i.
			(n isNoteEvent and: [n midiNote < lowestNote])
				ifTrue: [lowestNote := n midiNote - 4]]].
