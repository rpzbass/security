#!/bin/bash
#MEU SEGUNDO SCRIPT

echo "- - -TEST SECURITY- - -" 

read -p "Digite o servico a ser iniciado: " serv

service $serv restart 

echo "Servicos ativos ativos:"

ps aux | grep $serv 

echo "Portas Abertas"

netstat -nlpt

 

