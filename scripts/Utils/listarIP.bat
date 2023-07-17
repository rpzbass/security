@echo off

@echo " ---- LISTA O IP LOCAL ---- "
@echo.

for /F "tokens=2 delims=:" %%i in ('ipconfig ^| find "IPv4" ^| find "1."') do set IP=%%i 

set HOST=%computername%

msg  /server:10.0.0.2 * IP : %IP%  MAQUINA : %HOST% 
pause


