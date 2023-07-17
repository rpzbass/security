<#
    Autor: RP
    
    Descricao:  Copia fotos com 10 dias
#>


Write-host @"
----------------------------------------------------------
|                                                        |
|            COPIA FOTOS COM ATÉ 10 DIAS ANTERIORES      |
|            DO SERVER JCSEC-AP01 by RP                  | 
|                                                        |
----------------------------------------------------------
"@ -ForegroundColor Green


$path_local = "<diretorio>";


$fotoantigas =  Get-ChildItem -path $path_local | Where_Object {$_.LastWriteTime -lt (Get-Date).AddDays(-10)};


foreach($foto in $fotoantigas){

       write-host "Deletando foto antigas $foto"
      <# Remove-Item  -Path  $path_local  -Force ;  #>    


}


while(1){


$path ="\\192.168.X.X\Gravacao\PRIVATE\FOTOS"

$fotos = Get-ChildItem -path $path| Where-Object{$_.LastWriteTime -ge (Get-Date).AddDays(-10)}

$cont= 0


foreach($foto in $fotos){
    
        $dst =  Test-Path -Path C:\SPTrans\FOTOS\$foto

            if(!$dst){
                
                Write-Host Copiando arquivo $foto
               <# Copy-Item -Path  $path\$foto -Destination "C:\SPTrans\FOTOS\" -Force #>
           
                
            }
        }


write-host Monitorando Fotos...
}










