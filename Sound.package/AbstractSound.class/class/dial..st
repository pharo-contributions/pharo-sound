utilities
dial: aString
	| s |
	"AbstractSound dial: '867-5309'" "ask for Jenny"

	s := SequentialSound new.
	aString do: [ :c | | lo m index hi |
		c = $,
			ifTrue: [ s add: (FMSound pitch: 1 duration: 1 loudness: 0) ]
			ifFalse: [
				(index := ('123A456B789C*0#D' indexOf: c)) > 0
					ifTrue: [
						lo := #(697 770 852 941) at: (index - 1 // 4 + 1).
						hi := #(1209 1336 1477 1633) at: (index - 1 \\ 4 + 1).
						m := MixedSound new.
						m add: (FMSound pitch: lo duration: 0.15 loudness: 0.5).
						m add: (FMSound pitch: hi duration: 0.15 loudness: 0.5).
						s add: m.
						s add: (FMSound pitch: 1 duration: 0.05 loudness: 0)]]].
	^ s play.

