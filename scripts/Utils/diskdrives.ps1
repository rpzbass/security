echo "--- Listar dispositivos USB ----"


$k = 10

for ( $i = 0 ; $i -lt 12 ; $i++){

    if($k -eq 10){
        
        $k++
        echo "O VALOR DE K É $k" 
        $nome = read-host 
        echo $nome
    }

} 

