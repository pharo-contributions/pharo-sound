driver selection
reset
	<script>
	(CurrentDriverSession == Smalltalk session and: [ CurrentDriver isNotNil ]) ifTrue: [ 
		CurrentDriver shutdown.
	].

	CurrentDriver := nil.