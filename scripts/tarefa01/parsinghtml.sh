#!/bin/bash
#
#autor: RPZBASS
#script:Parsing html
#data:05/01/2023
#

if [ "$1" == "" ]
then

echo "---------------------------------------------------------"
echo "| ZONE SECURITY  - PARSING HTML                         |"
echo "| MODO DE USO:  $0 WWW.EXAMPLE.COM.BR     |"
echo "|              By    RONALDO                            |"
echo "--------------------------------------------------------- "

sleep 1
else
echo "Efetuando requisicao..."
sleep 1
wget  $1

echo -e "\e[1;32;40m Resolvendo dominios encontrados...\e[0m"
sleep 2
echo "=============================    BUSCANDO HOSTS   ==================================================="
echo ""



for list in $(cat index.html | grep href  | cut -d '/' -f 3 | cut -d '"' -f1  | grep -v ">" | grep -v "<"); 
do 

    echo $list 

done
sleep 2
echo "" 
echo "============================    RESOLVENDO HOSTS ENCONTRADOS    ========================================="


for list in $(cat index.html | grep href  | cut -d '/' -f 3 | cut -d '"' -f1  | grep -v ">" | grep -v "<"); 
do 

    host $list | grep -v NXDOMAIN 

done
echo " "
echo "deletando arquivos temporarios"
sleep 1
rm  *.html

fi
