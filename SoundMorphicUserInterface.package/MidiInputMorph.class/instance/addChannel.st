adding
addChannel
	"Add a set of controls for another channel. Prompt the user for the channel number."

	| existingChannels newChannel candidates |
	existingChannels := Set new.
	1 to: 16 do: [:ch | (instrumentSelector at: ch) ifNotNil: [existingChannels add: ch]].
	candidates := (1 to: 16) select: [:ch | (existingChannels includes: ch) not].
	newChannel := UIManager default chooseFrom: (candidates collect: [:c | c printString]) values: candidates.
	newChannel ifNotNil: [self addChannelControlsFor: newChannel].
