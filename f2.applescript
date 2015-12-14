try
    tell application "System Events"
     keystroke "FOOD"     
	end tell
on error errMsg
	display dialog "Error: " & errMsg
end try