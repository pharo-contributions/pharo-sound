menu and buttons
setDisplayType
	"Set the display type."

	|  choices choice on |
	choices := #('signal' 'spectrum' 'sonogram').
	choice := MenuMorph 
				chooseFrom: choices values: choices lines: #() title:  ('display type (currently {1})' translated format:{displayType}).
	choice ifNil: [^ self].
	on := soundInput isRecording.
	self stop.
	displayType := choice.
	self resetDisplay.
	on ifTrue: [self start].

