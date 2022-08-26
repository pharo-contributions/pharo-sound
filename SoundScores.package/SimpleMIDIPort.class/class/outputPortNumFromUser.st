utilities
outputPortNumFromUser
	"Prompt the user for a MIDI output port. Answer a port number, or nil if the user does not select a port or if MIDI is not supported on this platform."
	"SimpleMIDIPort outputPortNumFromUser"

	| portCount aMenu dir col colVa |
	portCount := self primPortCount.
	portCount = 0 ifTrue: [^ nil].
	col := OrderedCollection new. 
	colVa := OrderedCollection new. 
	0 to: portCount - 1 do:[:i |
		dir := self primPortDirectionalityOf: i.
		(dir = 2) | (dir = 3) ifTrue:[
			col add: (self portDescription: i).
			colVa add: i]].
	^ MenuMorph 
		chooseFrom: col values: colVa lines: #() title: 'MIDI port for output:' translated.
