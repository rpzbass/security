<#
    
    Autor: RP
    Descrição:  Script de deleção de arquivos com mais de 30 dias
    Objetivo: Otimização de desempenho de rede na produção.

#>


$path ="%cd%\desktop\"

$path_local = "D:\Local"

$lista_fotos = Get-ChildItem -Path "D:\Private" | Where-Object{$_.LastWriteTime -lt (Get-Date).AddDays(-15)}

$cont = 0

foreach($lista in $lista_fotos){
   
   $cont = 0

   <#remove-item $path\$arq#>

   write-host "Removendo item $lista" 

}




$lista_rede2 = Get-ChildItem -Path $path | Where-Object{$_.LastWriteTime -ge (Get-Date).AddDays(-15)}


$lista_local = Get-ChildItem -Path $path_local 


foreach($local in $lista_local){


    foreach($rede in $lista_rede2){
        
        
        if($lista -ne $arq_loca){

            
            <#Copy-Item -Path "$path\$lista" -Destination "$path_local" -Force #>
            write-host "copiando arquivo $lista"

            
        }  
    
    }
    
    write-host  "TESTE LOCAL" $local


}















