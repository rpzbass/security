#!/bin/bash

echo "Qual a idade ?"

read idade 

if [ "$idade" -ge "18" ]
then

       echo "PODE DIRIGIR!"
else 

       echo "NAO PODE DIRIGIR"

fi
