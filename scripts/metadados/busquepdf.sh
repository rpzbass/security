#!/bin/bash


echo " ____                               ____     _  __ "
echo "| __ ) _   _ ___  __ _ _   _  ___  |  _ \ __| |/ _|"
echo "|  _ \| | | / __|/ _  | | | |/ _ \ | |_) / _  | |_ "
echo "| |_) | |_| \__ \ (_| | |_| |  __/ |  __/ (_| |  _|"
echo "|____/ \__,_|___/\__, |\__,_|\___| |_|   \__,_|_|"
echo ""
echo "                   v0.1  by RP                    "
echo ""

echo "---------------------------------------------------"
echo "Localizando Pdf's publicos..."

lynx --dump "https://google.com/search?&q=site:$1+ext:$2" | grep ".$2" | cut -d "=" -f2 | egrep -v "site|google" | sed 's/...$//' > tempFile
echo ""
echo "Baixando..."

if [[ -s tempFile ]];then

for site in $(cat tempFile);
do 

	wget -q $site;

done
echo "Limpando cache..."
rm -r tempFile

exiftool *.pdf

else
	echo "Nao foram encontrado dados!!!"

fi




