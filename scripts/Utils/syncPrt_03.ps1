#Autor: RP

#Descrição: Script de copia de arquivos de um diretorio para outro   

#Data: 30/08/2022




Write-Host @"
+==================================================+
|                                                  |
|                                                  |
|           SINCRONIZA PRT by RP 0.3               |
|                                                  |
|                                                  |           
+==================================================+
"@ -ForegroundColor green


Write-Host Verificando saida de arquivos PRT...


$src = Get-ChildItem -Path <diretoriodestino> -Name

    foreach($list in $src){
    
        $dst =  Test-Path -Path <diretoriodestino>

            if(!$dst){
                
                Write-Host Copiando arquivo $list
                Copy-Item -Path  O:\pre-impressao\01_ploter\$list -Destination <diretoriodestino> -Force
           
                Write-Host  Concluido com sucesso!!!
            }
        }
        
