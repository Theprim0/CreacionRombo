#!/bin/bash

# Script por Arturo Rivas
# GNU General Public License
# Versión Pre-Aplha0.1

	#Declaramos variables globales
declare -i contador
parametro_introducido=$1
check='^[0-9]+$'

	#Comprobación de nulo o no es un número
if [ -z $1 ] || ! [[ $1 =~ $check ]] || [ $2 ]; then
	echo "Debes introducir solo un número como parámetro"
else


contador2=0
let vueltas=parametro_introducido-1


	 #Bucle de escribir parte superior
for (( contador=1 ; contador <= $parametro_introducido ; contador++ )); do
	while (( contador2 < $parametro_introducido ));do
		echo -n " "
		let contador2=contador2+1
	done
	arrobas=$arrobas"@@"
	echo $arrobas
	let contador2=contador2-vueltas
	let vueltas--
done

	 #Reseteamos variables
#echo "corte"
unset contador
unset contador2
unset vueltas

	 #Bucle escribir parte inferior
#let vueltas=parametro_introducido-1

vueltas=-3
contador2=$parametro_introducido-2
for (( contador=1 ; contador <= $parametro_introducido ; contador++ )); do
	while (( contador2 < $parametro_introducido )); do
		echo -n " "
		let contador2=contador2+1
	done
	arrobas=$(echo $arrobas | cut -c 3-)
	echo $arrobas
#	echo $vueltas
	let contador2=contador2+vueltas
	let vueltas=vueltas-1
done

fi
