set destinationUid to ""
set sources to {"", ""}

-- Clear the destination calendar
tell application "Calendar"
	set destinationCalendar to first calendar where its uid = destinationUid
	repeat with anEvent in (get events of destinationCalendar)
		delete anEvent
	end repeat

	-- display dialog "Cleared " & name of destinationCalendar as string

	-- If this loop displays anything the clearing didn't work
	-- repeat with anEvent in (get events of destinationCalendar)
	-- display dialog "Failed to clear " & summary of anEvent as string
	-- end repeat
end tell

-- Copy sources to destination
tell application "Calendar"
	set destinationCalendar to first calendar where its uid = destinationUid
	repeat with sourceUid in sources
		set sourceCalendar to (first calendar where its uid = sourceUid)
		display dialog "Copying " & name of sourceCalendar as string
		repeat with anEvent in (get events of sourceCalendar)
			display dialog summary of anEvent as string
			set desc to "Copied from another calendar on " & (current date)
			duplicate anEvent to end of destinationCalendar with properties {description:desc, attendee:make new attendee at end of attendees with properties {email:"example@apple.com"}}
		end repeat
	end repeat

	-- display dialog "Copied to " & name of destinationCalendar as string
	-- repeat with anEvent in (get events of destinationCalendar)
	-- display dialog summary of anEvent as string
	-- end repeat
end tell
