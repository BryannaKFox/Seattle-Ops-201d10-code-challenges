# Script:                       ops201d10-challenge09_logretrevial
# Author:                       Bryanna Fox
# Date of latest revision:      11/2/2023
# Purpose:                      Retrieve the logs

#Output all events from the System log that occurred in the last 24 hours to a file on your desktop named last_24.txt
$startTime = (Get-Date).AddDays(-1)
$events = Get-WinEvent -LogName System -FilterXPath "*[System[TimeCreated[timediff(@SystemTime) <= 86400000]]]" -ErrorAction Stop
$outputFilePath = [System.IO.Path]::Combine($env:Bryanna, 'Desktop\last_24.txt')
$outputFilePath = [System.IO.Path]::Combine($env:USERPROFILE, 'Desktop\last_24.txt')
$events | Format-Table -Autosize | Out-File -FilePath $outputFilePath -Force
Write-Host "Events from the last 24 hours have been exported to: $outputFilePath"

#Output all "error" type events from the System event log to a file on your desktop named errors.txt.


#Print to the screen all events with ID of 16 from the System event log. 

#Print to the screen the most recent 20 entries from the System event log.

#Print to the screen all sources of the 500 most recent entries in the System event log. Ensure that the full lines are displayed (get rid of the ... and show the entire text.)
