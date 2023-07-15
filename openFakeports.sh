#!/bin/bash

echo "Abrindo portas..."

nc -vnlp 21&
sleep 2
nc -vnlp 22&
sleep 2
nc -vnlp 23&
sleep 2
nc -vnlp 25&
echo "Portas abertas"
netstat -nlpt



