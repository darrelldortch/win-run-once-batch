@echo off
rem Script intalls Run Once User Apps
if exist "%localappdata%\TeamsOnce.txt" (
  rem echo File Exist
) else (
  echo Installing MS Teams...Please wait
  msiexec /i c:\utils\Teams_windows_x64.exe /Silent
  dir c:\utils > %localappdata%\TeamsOnce.txt
)
if exist "%localappdata%\RConce.txt" (
  rem echo File Exist
) else (
  echo Installing RingCentral Please wait
  c:\utils\RCMeetingsClientSetup.exe /Silent
  dir c:\utils > %localappdata%\RConce.txt
)
if exist "%localappdata%\ZoomOnce.txt" (
  rem echo File Exist
) else (
  echo Installing Zoom...Please wait
  c:\utils\ZoomInstaller.exe /Silent
  c:\utils\ZoomOutlookPluginSetup.msi /qn
  dir c:\utils > %localappdata%\ZoomOnce.txt
)