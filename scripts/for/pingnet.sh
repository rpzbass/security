#!/bin/bash
if [ "$1" == "" ]
then
        echo "TEST SECURITY - PING SWEEP"
        echo "Modo de uso: $0 REDE"
        echo "Exemplo: $0 192.168.0"
else

for host in {60..67};
do

    ping -c 1 $1.$host | grep "64 bytes" | cut -d ":" -f1 | cut -d " " -f4
    #ping -c 1 $1.$host | grev \"64 bytes\" | cut -d \":\"  -f4 | sed \'s/.$//\';
done
fi
