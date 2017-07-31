set newline to "
"
if application "Spotify" is running then
	tell application "Spotify"
		set track_name to name of current track
		set track_artist to artist of current track
		set track_album to album of current track
	end tell
	tell application "Growl"
		-- Make a list of the notifications this script will ever send.
		set the notificationsList to {"Current Spotify Track"}
		
		-- Register our script with Growl
		-- You can optionally (as here) set a default icon
		-- for this script's notifications.
		register as application "Spotify Notifier Script" all notifications notificationsList default notifications notificationsList icon of application "Spotify"
		set desc to track_artist & newline & track_album
		notify with name "Current Spotify Track" title track_name description desc application name "Spotify Notifier Script"
	end tell
end if
