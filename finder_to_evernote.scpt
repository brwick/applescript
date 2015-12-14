-- Create new notes in a notebook with this name
property importNotebook : "Inbox"

-- Save the Finder selection
tell application "Finder" to set selectedFiles to (selection)

repeat with f in selectedFiles
	-- For each item in the Finder selection
	-- Capture the file's metadata...
	tell application "Finder"
		set f to document file (f as alias)
		
		set creationDate to creation date of f
		set modificationDate to modification date of f
		set sourceUrl to URL of f
	end tell
	
	-- ... and create a new note with the file and its metadata
	tell application "Evernote"
		set filepath to POSIX path of (f as text)
		set newNote to create note title (name of f) from file (filepath as POSIX file) notebook importNotebook
		set creation date of newNote to creationDate
		set modification date of newNote to modificationDate
		set source URL of newNote to sourceUrl
		assign tag "Pleasant" to newNote
		assign tag "Projects" to newNote
	end tell
	
	-- Really hairy tagging in Mavericks.  Tags the files as Evernote and "Green".
	-- do shell script "xattr -w com.apple.metadata:_kMDItemUserTags '(\"Evernote\\n2\")' " & quoted form of (POSIX path of (f as alias))
	-- tell application "Finder" to set label index of file (f as alias) to item 4 of {2, 1, 3, 6, 4, 5, 7}
end repeat
