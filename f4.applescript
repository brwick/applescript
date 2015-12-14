try
    tell application "System Events"
     keystroke "EAT"     
	end tell
on error errMsg
	display dialog "Error: " & errMsg
end try