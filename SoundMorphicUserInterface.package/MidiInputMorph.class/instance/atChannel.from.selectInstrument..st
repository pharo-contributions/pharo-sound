accessing
atChannel: channelIndex from: aPopUpChoice selectInstrument: selection 
	| oldSnd name snd instSelector |
	oldSnd := midiSynth instrumentForChannel: channelIndex.
	(selection beginsWith: 'edit ') 
		ifTrue: 
			[name := selection copyFrom: 6 to: selection size.
			aPopUpChoice contentsClipped: name.
			(oldSnd isKindOf: FMSound) | (oldSnd isKindOf: LoopedSampledSound) 
				ifTrue: [EnvelopeEditorMorph openOn: oldSnd title: name].
			(oldSnd isKindOf: SampledInstrument) 
				ifTrue: [EnvelopeEditorMorph openOn: oldSnd allNotes first title: name].
			^self].
	snd := nil.
	1 to: instrumentSelector size
		do: 
			[:i | 
			(channelIndex ~= i and: 
					[(instSelector := instrumentSelector at: i) notNil 
						and: [selection = instSelector contents]]) 
				ifTrue: [snd := midiSynth instrumentForChannel: i]].	"use existing instrument prototype"
	snd ifNil: 
			[snd := (selection = 'clink' 
						ifTrue: 
							[(SampledSound samples: SampledSound coffeeCupClink samplingRate: 11025)]
						ifFalse: [(AbstractSound soundNamed: selection) ])copy ].
	midiSynth instrumentForChannel: channelIndex put: snd.
	(instrumentSelector at: channelIndex) contentsClipped: selection