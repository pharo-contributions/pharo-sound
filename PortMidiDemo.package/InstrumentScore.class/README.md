I represent a MIDI score.
I have one track and one instrument that plays this track.
My instance variable positionInScore is an index and is used when playing several scores at the same time.
My instance variable timerCounter is used when playing several scores at the same time too. It keeps in memory the time the timer needs to reach before sending a noteOff message while playing the track.