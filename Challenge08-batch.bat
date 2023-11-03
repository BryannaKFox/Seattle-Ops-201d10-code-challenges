:: Script:                       ops201d10-challenge08-windows-batch-scripting
:: Author:                       Bryanna Fox
:: Date of latest revision:      11/1/2023
:: Purpose:                      Identify the script

@echo off
:: echo will display the following text in "". @echo off is telling the computer to NOT display ANY of the commands in the script.
setlocal enabledelayedexpansion
:: setlocal is saying to only look at a certian part of the script or narrowing the scope. enabledelayedexpansion is simply to enable a delayed expansion. 
set /p sourcePath=Enter the source folder path:
:: set /p is telling the user to enter a value that will be assigned to sourcePath, from there that value will go into the source folder under path
set /p destinationPath=Enter the destination folder path:
:: similar to line 10 it will ask the user to enter a value that will then be assigned to destinationPath and from there it will go into the destination folder under path
if not exist "!sourcePath!\" (
	echo Error: Source folder does not exist. 
	goto :eof
)
:: Line 14-17 is saying that if the value that is entered for the sourcePath does not exist then the command will show the message will display source folder does not exist. The goto :eof is signifying the end of the script and this will exit the script if there is no folder. 
if not exist "!destinationPath!\" (
	echo Error: Destination folder does not exist. 
	goto :eof 
)
:: This would be the same thing as 14-17 except this will apply to the destinationPath
robocopy "!sourcePath!" "!destiantionPath!" /E
:: the robocopy is telling the computer to copy a robust amount of information. the ! means delayed variable expansion that was enabled in line 8. the sourcePath destinationPath are the values that was entered from the user. the E/ at the end tells the robocopy to copy all the subdirectories including the empty ones.  
if errorlevel 8 (
	echo Error: ROBOCOPY encountered errors during the copy operation.
) else (
	echo Copy operation completed successfully. 
)
:: Line 26 says that if the error level is 8 or higher then line 27 will display an error message saying robocopy encountered errors during operations
:: line 28-30 is telling the computer that if the  error level is lower than 8 then in line 42 the message will display that the copy operation was successful.
:end 
endlocal
:: This is saying that this is the end of the script and line 49 is indicating that it is the end of the local, this goes with the setlocal in line 11




