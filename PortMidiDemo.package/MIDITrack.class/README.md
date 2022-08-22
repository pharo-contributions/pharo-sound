### Description
I represent a track that has one or several MIDI notes.

### Main collaborator
- NewMIDIScore : several of my instances can be contained in a score.
- MIDINoteEvent : I can contain several MIDI notes and modify them.

### Instance Variables
- events: a collection of MIDINoteEvent.
- nextEventIndex: the index of the next note to play.
- channel: the MIDI channel the notes are played on.
- muted: a boolean to know if the track is muted or not.
- currentlyPlayed: a collection of MIDINoteEvent that are currently played.