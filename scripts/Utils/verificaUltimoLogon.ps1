while(1){

Write-host " Verificar ultimo logon usuario "
Write-host " "

$user = Read-host "login usuario "

Get-ADUser -Identity $user -Properties "LastLogonDate"

}
