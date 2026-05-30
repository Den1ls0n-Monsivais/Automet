#!/bin/bash

ls ../
echo "=================================="


df -h


echo "=================================="

directorio=$(ls ../)
echo "=================================="

peso=$(df -h | grep root | awk '{ print $4}' | sed 's/G//')

echo $peso

echo "=================================="

echo $directorio


echo "=================================="
if (( $peso>5)); then
	mkdir primer_carpeta
	touch primer_carpeta/primer_archivo
	echo $directorio >primer_carpeta/primer_archivo

elif (($peso==246)); then
	echo "se esta haciendo pruebas"
else
	echo "SIN ESPACIO SUFICIENTE"

fi

"primer-script.sh" 22L,319B
