# Script:                       ops201d10-challenge12_Powershell_IP_Analysis
# Author:                       Bryanna Fox
# Date of latest revision:      11/7/2023
# Purpose:                      Analyze IP addresses


# Create a local file called network_report.txt that holds the contents of an ipconfig /all command.

# Get network configuration information
$networkInfo = ipconfig /all

# Set the file path
$filePath = "C:\Users\Bryanna\Documents\network_report.txt"

# Write network information to the file
$networkInfo | Out-File -FilePath $filePath

Write-Host "Network report saved to $filePath"

# Use Select-String to search network_report.txt and return only the IP version 4 address.

# Use Select-String to find IPv4 addresses
$ipv4Addresses = Get-Content -Path $filePath | Select-String -Pattern '\b(?:\d{1,3}\.){3}\d{1,3}\b' | ForEach-Object { $_.Matches.Value }

# Remove the network_report.txt file
Remove-Item -Path $filePath -Force

Write-Host "network_report.txt removed."
