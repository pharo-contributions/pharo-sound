submorphs-add/remove
delete
	"Turn off recording when this morph is deleted."

	super delete.
	soundInput stopRecording.
