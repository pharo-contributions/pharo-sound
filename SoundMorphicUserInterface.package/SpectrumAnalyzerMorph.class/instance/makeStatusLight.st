private
makeStatusLight

	| s |
	statusLight := BorderedMorph new extent: 24@19.
	statusLight color: Color gray.
	s := StringMorph contents: 'On' translated.
	s position: statusLight center - (s extent // 2).
	statusLight addMorph: s.
	^ statusLight
