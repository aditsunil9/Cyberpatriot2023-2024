@echo off

::Check for Admin Rights
net session > nul 2> nul
if not %errorlevel% == 0 (
	echo:&echo Error: Admin privileges required. Please run this script in administrator mode.
	echo:&echo:Press any key to close the window.
	pause > nul
	exit
)

::Run the Powershell Script to Edit All of the Policies With Admin Rights
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& {Start-Process PowerShell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File ""%~dp0\Resources\Scan for Files\FindFiles.ps1""' -Verb RunAs}"