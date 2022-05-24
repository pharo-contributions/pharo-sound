I represent a music score with multiple tracks played by several instruments.

I have a tempo which will be followed by the MIDIScorePlayer.
I have an OrderedCollection of Scores that contains each score that will be played by the MIDIScoreplayer.
Each score is played on a MIDI channel which means that I can play at most 16 scores.