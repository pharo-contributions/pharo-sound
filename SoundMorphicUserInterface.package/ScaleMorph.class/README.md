I'm a scale with start and stop and labelsAbove and captionAbove. 

Determines where the labels and captions print, if they exist. Tick marks can either go up or down. For ticks going up, put in majorTickLength > 0. 

Negative value will make ticks go down. Examples on Class side.

 (ScaleMorph new
		start: 100
		stop: 150
		minorTick: 1
		minorTickLength: 2
		majorTick: 10
		majorTickLength: 10
		caption: 'Example 1'
		tickPrintBlock: [:v | v printString];
		width: 300) openInWorld