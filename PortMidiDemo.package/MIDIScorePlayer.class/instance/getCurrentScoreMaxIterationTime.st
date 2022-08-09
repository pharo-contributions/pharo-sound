liveCoding
getCurrentScoreMaxIterationTime

	^ (score tracks collect: [ :each | | iterationTime |
		   iterationTime := 0.
		   2 to: each events size do: [ :index | 
			   iterationTime := iterationTime + 
					((each events at: index) time - (each events at: index - 1) time) ]. ^ iterationTime]) max