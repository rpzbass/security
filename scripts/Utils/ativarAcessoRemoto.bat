@echo off

echo "----Ativar acesso remoto----"

set/p host="Informe o IP : "


PsExec.exe /accepteula \\%host% reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f
 