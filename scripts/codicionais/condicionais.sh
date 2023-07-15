#!/bin/bash

read -p "Qual a cor do semaforo ? " cor

if [ "$cor" == "verde" ]
then

    echo "Siga em frente!"

elif [ "$cor" == "amarelo" ]
then

     echo "Aguarde!"

else

     echo "Pare!"

fi



