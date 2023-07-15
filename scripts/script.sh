#!/bin/bash

#Meu primeiro script

echo "TEST SECURITY" #echo teste
echo "SISTEMA LIGADO POR:" $(uptime -p)
echo "DIRETORIO ATUAL:" $(pwd)
echo "O USER ATUAL:" $(whoami)
read -p "DIGITE O IP : " ip

ping -c1 $ip


echo "Ping efetuado $ip"









