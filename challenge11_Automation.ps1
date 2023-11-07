# Script:                       ops201d10-challenge11_automation
# Author:                       Bryanna Fox
# Date of latest revision:      11/6/2023
# Purpose:                      automation endpoint

#Enable File and Printer Sharing
Set-NetFirewallRule -DisplayGroup "File And Printer Sharing" -Enabled True
#Allow ICMP traffic
New-NetFirewallRule -DisplayName "Allow ICMP" -Protocol ICMPv4 -Enabled True -Direction Inbound -Action Allow
#Enable Remote management
Enable-PSRemoting -Force
#Remove bloatware
Get-AppxPackage -AllUsers | Remove-AppxPackage
#Enable Hyper-V
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V-All
#Disable SMBv1, an insecure protocol
Set-SmbServerConfiguration -EnableSMB1Protocol $false
