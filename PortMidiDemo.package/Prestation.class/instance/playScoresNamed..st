playing
playScoresNamed: aScoreNameArray
	aScoreNameArray do: [ :scoreName |
			self playScoreNamed: scoreName
		 ].