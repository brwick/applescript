try
    tell application "System Events"
     keystroke "MY"     
	end tell
on error errMsg
	display dialog "Error: " & errMsg
end try