#Autor: RP

#Descrição: Script de copia de arquivos de um diretorio para outro   

#Data: 30/08/2022




Write-Host @"
+==================================================+
|                                                  |
|                                                  |
|        SCRIPT COPIA FIX BUG by RP 0.1            |
|                                                  |
|                                                  |           
+==================================================+
"@ -ForegroundColor green

Write-Host Carregando...
Start-Sleep  5

Write-Host Verificando saida de arquivos PRT...

while(1){

Start-Sleep  2

$src = Get-ChildItem -Path \\10.0.X.X\<NOMEMAQUINA> -Name

    foreach($list in $src){
    
        $dst =  Test-Path -Path E:\PRT-Print\$list

            if(!$dst){
                
                Write-Host Copiando arquivo $list
                Copy-Item -Path  \\10.0.X.X\<NOMEMAQUINA>\$list -Destination <MAPEAMENTO> -Force
           
                Write-Host  Concluido com sucesso!!!
            }
        }
        
}