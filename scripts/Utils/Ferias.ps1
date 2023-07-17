
#Autor: rp

#Descrição: Desativa usuarios e coloca a tag ferias no campo descrição 



param($data)


function entraEmFerias{



Write-Host  "Formato Ex: Ferias 05-09-2022 À 04-10-2022 `n"

$data = Read-Host "Periodo de ferias " 

    foreach($list in $lista){

            $login = Get-ADUser -filter {displayname -like $list} | Select-Object -ExpandProperty SamAccountname
       
            $login2= $login -split " "  #Faz o split em caso de mais de um login
            
            if($login2.Length -ge 2){
            
                set-aduser -Identity $login2[0] -Description $data
                
                set-aduser -Identity $login2[1] -Description $data
          
                Disable-ADAccount -Identity $login2[0]
            
                Disable-ADAccount -Identity $login2[1]

            }else{
                 
                set-aduser -Identity $login -Description $data
                
                Disable-ADAccount -Identity $login
            }
            
    }

}


function listarUsuarios{

    foreach($list in $lista){
       
       Write-Host + $list

    }

}


function retornoFerias{
 
    foreach($list in $lista){

        $login = Get-AdUser -Filter {Name -eq $list} | Select-Object -ExpandProperty SamAccountname

        set-aduser -Identity $login  -Description " " 
        
        Enable-ADAccount -Identity $login
    
    } 

}

function  resetSenhaPadrao{

        
        $login = read-host "Informe o login para resetar senha padrão: " 
          
        #Get-AdUser -Filter {Name -like $nomeconc} | Select-Object -ExpandProperty SamAccountname

        Set-ADAccountPassword -Identity $login -Reset -NewPassword (ConvertTo-SecureString -AsPlainText "S456123#" -Force) # Resetar a senha

        Set-ADUser -Identity $login -ChangePasswordAtLogon $true   #Mudar a senha proximo logon

        Unlock-ADAccount -Identity $login 


}

function desbloquearLogin {

            
        $login = read-host  "Desbloquear login " 
        
        Unlock-ADAccount -Identity $login 

        Write-host "Usuario desbloqueado !!!"

}




function desabilitarUmUsuario{
     
        $nome = read-host "Login para desabilitar"
     
        $login = Get-ADUser -filter {displayname -like $nome} | Select-Object -ExpandProperty SamAccountname

        Disable-ADAccount -Identity $login

}

function habilitarUmUsuario{
     
        $nome = read-host "Login para Habilitar"
     
        $login = Get-ADUser -filter {displayname -like $nome} | Select-Object -ExpandProperty SamAccountname

        Enable-ADAccount -Identity $login

}

function buscarUsuario {
    
    $nome = read-host "Informe o nome do colaborador "

    $nomeconc = "*"+$nome+"*"

    $login = Get-AdUser -Filter {Name -like $nomeconc } | Select-Object -ExpandProperty SamAccountname

    foreach($log in $login){

        Write-host $log `n

    }
   pause
}


<#
function containSpaceString($param){

    $spl = $param -split ""

    foreach($ch in $spl){
       
        if($ch -eq " "){
            
            write-host teste
            
            return 1
            
        }

    }

}

#>

while(1){


Start-Sleep -Seconds 1.5


Write-Host @"

+=================================================+        
|                                                 |
|                                                 |
|        SCRIPT FERIAS - MENU  0.3 by RP          |
|                23 / 11 / 2022                   |
+=================================================+

1 - Desabilitar contas de usuarios em Ferias  

2 - Habilitar contas de usuarios Retorno 

3 - Reset de senha e debloquear usuario

4 - Desabilitar somente um usuario  

5 - Habilitar usuario

6 - Buscar Usuario pelo nome

7 - Desbloquear Usuario

8 - Sair

---------------Lista de Usuarios RH---------------
"@ -ForegroundColor green




$lista = cat $env:userprofile\Desktop\usuarios.txt

listarUsuarios

Write-Host @"
--------------------------------------------------

"@ -ForegroundColor green



$opc = Read-Host "OPCÕES" 



switch ( $opc )  

{
     
    1 {  entraEmFerias  }
   
    2 {  retornoFerias  }

    3 {  resetSenhaPadrao }

    4 {  desabilitarUmUsuario }

    5 {  habilitarUmUsuario }

    6 {  buscarUsuario }

    7 {  desbloquearLogin }

    8 { exit }
}

}
