services
ensurePollingRunning

	pollingProcess ifNotNil: [
		^ self "might improve by keeping track when last poll was executed" ].
	pollingProcess := [
	                  [
	                  inputs do: [ :each | each readAllAvailableMessages ].
	                  1 milliSeconds wait ] repeat ] forkAt:
		                  Processor timingPriority - 1