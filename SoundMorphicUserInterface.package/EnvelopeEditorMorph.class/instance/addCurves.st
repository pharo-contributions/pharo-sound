construction
addCurves
	"Add the polyLine corresponding to the currently selected envelope,
	and possibly all the others, too."
	| verts aLine |
	sound envelopes do:
		[:env | 
		(showAllEnvelopes or: [env == envelope]) ifTrue:
			[verts := env points collect:
				[:p | (self xFromMs: p x) @ (self yFromValue: p y)].
			aLine := EnvelopeLineMorph new
						vertices: verts borderWidth: 1
						borderColor: (self colorForEnvelope: env).
			env == envelope
				ifTrue: [aLine borderWidth: 2.  line := aLine]
				ifFalse: [aLine on: #mouseUp send: #clickOn:evt:from:
							to: self withValue: env.
						self addMorph: aLine]]].
	self addMorph: line  "add the active one last (in front)"