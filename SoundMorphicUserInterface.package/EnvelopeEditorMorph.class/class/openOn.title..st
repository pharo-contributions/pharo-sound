open
openOn: aSound title: aString
	"EnvelopeEditorMorph openOn: (FMsound brass1) copy title: 'brass1'"
	(self basicNew initOnSound: aSound title: aString) openInWorld