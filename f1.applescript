try
	tell application "System Events"
     keystroke "NO_KEYSTROKE"     
	end tell
on error errMsg
	display dialog "Error: " & errMsg
end try
