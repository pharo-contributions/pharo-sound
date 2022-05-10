menu
invokeScoreMenu: evt
	"Invoke the score's edit menu."

	| menu subMenu |
	menu := MenuMorph new defaultTarget: self.
	menu addList:
		{{'cut' translated.		#cutSelection}.
		{'copy' translated.		#copySelection}.
		{'paste' translated.		#insertSelection}.
		{'paste...' translated.		#insertTransposed}}.
	menu addLine.
	menu addList:
		{{'legato' translated.		#selectionBeLegato}.
		{'staccato' translated.	#selectionBeStaccato}.
		{'normal' translated.		#selectionBeNormal}}.
	menu addLine.
	menu addList:
		{{'expand time' translated.		#expandTime}.
		{'contract time' translated.		#contractTime}}.
	menu addLine.
	subMenu := MenuMorph new defaultTarget: self.
		(2 to: 12) do: [:i | subMenu add: i printString selector: #beatsPerMeasure: argument: i].
		menu add: 'time   ' translated, beatsPerMeasure printString subMenu: subMenu.
	subMenu := MenuMorph new defaultTarget: self.
		#(2 4 8) do: [:i | subMenu add: i printString selector: #notePerBeat: argument: i].
		menu add: 'sig     ' translated, notePerBeat printString subMenu: subMenu.
	menu addLine.
	showMeasureLines
		ifTrue: [menu add: 'hide measure lines' translated selector: #measureLinesOnOff]
		ifFalse: [menu add: 'show measure lines' translated selector: #measureLinesOnOff].
	showBeatLines
		ifTrue: [menu add: 'hide beat lines' translated selector: #beatLinesOnOff]
		ifFalse: [menu add: 'show beat lines' translated selector: #beatLinesOnOff].

	menu addLine.
	menu add: 'add keyboard' translated selector: #addKeyboard.

	menu popUpEvent: evt in: self world.
