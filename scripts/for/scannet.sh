#!/bin/bash

if [ "$1" == "" ]
 then

       echo "TEST SECURITY - PORTSCAN NETWORK"
       echo "Modo de uso: $0 REDE"
       echo "Exemplo: $0 192.168.1"

 else

for ip in {1..254};
  do

    hping3 -S -p 80 -c 1 $1.$ip 2> /dev/null | grep "flags=SA" | cut -d " " -f 2;
    #Todos os resultado som SA  ou seja SYN/ACK quer dizer que a porta esta aberta
    #Caso seja RA  RST/ACK QUER DIZER QUE A PORTA ESTA FECHADA 
  done
fi 
