<#
    Autor: RP
    Descricao: Efetuado a limpeza de fotos de 10 dias para atrás e copia fotos 10 dias em diante.
#>


Write-host @"

##################################################################
|                                                                |
|            LIMPEZA E COPIA COM ATE 10 DIAS ANTERIORES          |
|            DO SERVER JCSEC-AP01 by RP  v0.3                    | 
|                                                                |
##################################################################

"@ -ForegroundColor Green


$path_remoto ="\\192.168.X.X\Gravacao\PRIVATE\FOTOS"

$path_local = "C:\SPTrans\FOTOS\"

write-host "=================== EFETUANDO LIMPEZA DE FOTOS LOCAIS ===========================`n"

$fotoantigas =  Get-ChildItem -path "$path_local" | Where-Object {$_.LastWriteTime -lt (Get-Date).AddDays(-10)};

foreach($foto in $fotoantigas){

       write-host "Deletando foto antigas $foto"
       Remove-Item  -Path  "$path_local\$foto"  -Force      

}


write-host "=================== ATUALIZANDO FOTOS LOCAIS COM ATE 10 DIAS ====================`n"


while(1){

$fotos = Get-ChildItem -path "$path_remoto" | Where-Object{$_.LastWriteTime -ge (Get-Date).AddDays(-10)}

$cont= 0

foreach($foto in $fotos){
    
        $dst =  Test-Path -Path "$path_local\$foto"

            if(!$dst){
                
                Write-Host Copiando arquivo $foto
                 Copy-Item -Path "$path_remoto\$foto" -Destination "C:\SPTrans\FOTOS\" -Force            
                
            }
        }


write-host Monitorando Fotos...
}









