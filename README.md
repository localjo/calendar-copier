# calendar-copier

An AppleScript to copy events from one calendar to another

Can be scheduled with Automator or a cron job to automatically copy events from one calendar or group of calendars into another. Useful for things like copying events from an Exchange calendar into a Google calendar that can be shared on a personal device or publicly. Use caution if you're copying a calendar with sensitive information! This could accidentally copy private information into a calendar that shouldn't contain that information. Use at your own risk!

This is a work in progress. Feel free to contribute with a PR, or copy/paste what you need for your own script, but don't expect this to work as-is.

## Usage

Paste calendar `uid`s into `destinationUid` and `sources` at the top of the script. You can get a `uid` by calendar name with this snippet;
```
-- Get a calendar name
tell application "Calendar"
	display dialog uid of calendar "Test 2" as string
end tell
```

You'll have to fix some bugs, but it's pretty close to working.

Then run the script manually or schedule it with Automator or cron. Good luck!
