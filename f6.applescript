try
    tell application "System Events"
     keystroke "PROJECT-"
	end tell
on error errMsg
	display dialog "Error: " & errMsg
end try