#!/bin/bash

for palavra in $(cat lista2.txt) 
do 

resposta=$(curl -s -H "User-Agent: MaxSex" -o  /dev/null -w  "%{http_code}" $1/$palavra/)

if [ $resposta == "200" ]
then
echo  "Diretorio encontrado: $palavra"
fi
done


