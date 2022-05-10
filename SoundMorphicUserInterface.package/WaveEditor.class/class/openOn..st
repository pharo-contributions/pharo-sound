instance creation
openOn: dataCollection
	"Open a new WaveEditor on the given sequencable collection of data."
	"self openOn: #()"
	^ (self new data: dataCollection) openInWorld
