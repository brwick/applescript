try
    tell application "System Events"
     keystroke "email.test"     
	end tell
on error errMsg
	display dialog "Error: " & errMsg
end try