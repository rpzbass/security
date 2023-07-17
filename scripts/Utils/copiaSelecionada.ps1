<#
    Autor: RP
    
    Descrição:  Script de deleção de arquivos com mais de 30 dias
    Objetivo: Otimização de desempenho de rede na produção.
#>


$path ="\\192.168.X.X\Gravacao\PRIVATE\FOTOS"

$fotos = Get-ChildItem -path $path| Where-Object{$_.LastWriteTime -ge (Get-Date).AddDays(-10)}

$cont= 0

foreach($foto in $fotos){
   $cont++
  
   Copy-Item -Path "<diretorioMapeado>" -Destination "<diretoriodestino>" -Force
   
   write-host "Copiando item $foto  N� fotos: $cont" 

}
write-host $cont