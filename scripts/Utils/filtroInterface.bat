@echo off



For /f "tokens=5 delims= " %%i in ('netsh interface ipv4 show interfaces ^| find "W"') do set adapter1="%%i"

echo %adapter1%

netsh interface ip show dns name=%adapter1% 


For /f "tokens=5 delims= " %%i in ('netsh interface ipv4 show interfaces ^| find "E"') do set adapter2="%%i"

netsh interface ip show dns name=%adapter2% 

pause
