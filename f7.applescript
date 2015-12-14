try
    tell application "System Events"
        keystroke "@email.test"
        delay .2
        keystroke tab
        keystroke "FOURFIVESIX"
        keystroke return
	end tell
on error errMsg
	display dialog "Error: " & errMsg
end try