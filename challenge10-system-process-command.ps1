# Script:                       ops201d10-challenge10-system-process-commands
# Author:                       Bryanna Fox
# Date of latest revision:      11/4/2023
# Purpose:                      System Process Commands


#Print active Proccess ordered by highest CPU
Get-Process | Sort-Object CPU -Descending

#Print active process by highes PIN at the top
Get-Process | Sort-Object Id -Descending

#Top 5 active process by highest Working Set
Get-Process | Sort-Object WS -Descending | Select-Object -First 5

#Start a browser process (such as Google Chrome or MS Edge) and have it open https://owasp.org/www-project-top-ten/.
Start-Process msedge.exe -ArgumentList "https://owasp.org/www-project-top-ten/"

#Start the process Notepad ten times using a for loop.
for ($i = 1; $i -le 10; $i++) {
    Start-Process notepad.exe
}

#Close all instances of the Notepad.
Get-Process | Where-Object { $_.ProcessName -eq "notepad" } | ForEach-Object { Stop-Process -Id $_.Id -Force }

#Kill a process by its Process Identification Number. Choose a process whose termination won’t destabilize the system, such as Google Chrome or MS Edge.
Stop-Process -Id [YourPID] -Force
