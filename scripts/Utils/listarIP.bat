@echo off

@echo " ---- LISTA O IP LOCAL ---- "
@echo.

for /F "tokens=2 delims=:" %%i in ('ipconfig ^| find "IPv4" ^| find "1."') do set IP=%%i 

set HOST=%computername%

msg  /server:192.168.1.65 * IP : %IP%  MAQUINA : %HOST% 
pause


