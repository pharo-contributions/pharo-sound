accessing
soleInstance

	<script: 'self soleInstance inspect'>
	soleInstance ifNil: [
		soleInstance := self basicNew
			                initialize;
			                yourself ].
	^ soleInstance