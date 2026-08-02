@echo off
title Gogurt's 6 Player MTG Table - Installer

rem Runs the installer.ps1 that sits in this same folder. No code is downloaded
rem and executed - only the mod's data files are fetched (by installer.ps1).
if not exist "%~dp0installer.ps1" (
  echo.
  echo Could not find installer.ps1 in this folder.
  echo Please download BOTH "Install.bat" and "installer.ps1" into the same
  echo folder, then run Install.bat again.
  echo.
  pause
  exit /b 1
)

powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0installer.ps1"
pause
