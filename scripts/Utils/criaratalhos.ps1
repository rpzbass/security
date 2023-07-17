


Write-Host @"
+==================================================+
|                                                  |
|                                                  |
|               CRIAR ATALHOS by RP 0.1                 |
|                                                  |
|                                                  |           
+==================================================+
"@ -ForegroundColor green

Write-Host Carregando...

Start-Sleep  5
   
$icon = Test-Path -Path $home\desktop\Pyxis.lnk 

   
    if(!$icon){

        
        Copy-Item  C:\atalhos\*.* -Destination $home\desktop\ -Force

    
    }



