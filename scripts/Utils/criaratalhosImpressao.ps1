


Write-Host @"
+==================================================+
|                                                  |
|                                                  |
|               CRIAR ATALHOS by RP 0.2                 |
|                                                  |
|                                                  |           
+==================================================+
"@ -ForegroundColor green

Write-Host Carregando...

Start-Sleep  5
   
$icon = Test-Path -Path $home\desktop\Pyxis.lnk 

   
    if(!$icon){
        
        
        Copy-Item  C:\Perfil_Impressao\*.* -Destination $home\desktop\ -Force


    }



