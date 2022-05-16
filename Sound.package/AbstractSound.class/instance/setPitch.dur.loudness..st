backward compatibility
setPitch: pitchNameOrNumber dur: d loudness: l
	"Initialize my envelopes for the given parameters. Subclasses overriding this method should include a resend to super."

	self setPitch: pitchNameOrNumber duration: d loudness: l