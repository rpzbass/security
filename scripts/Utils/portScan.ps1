

param($ip)

Write-host @"
----------------------------------------------------------
|                                                        |
|             JALLCARD - PORTSCAN v1.0                   | 
|             BY RONALDO                                 |
|                                                        |
----------------------------------------------------------
"@ -ForegroundColor Green

if (!$ip){

write-host @"      
----------------------------------------------------------
|                                                        |
|             WHITE SECURITY                             | 
|             MODO DE USO: .\portScan.exe < IP >         |
|                                                        |
----------------------------------------------------------
"@ -ForegroundColor Green

}else{

    try{

        write-host "Scaneando...`n" 
        foreach ($port in 1..64535){
        
         $comando = Test-NetConnection $ip -Port $port  -WarningAction SilentlyContinue -InformationLevel Quiet   

         if($comando){
            
            echo "- A porta [ $port ] esta aberta "

         }
     
         }  
       }catch{}
       
}
