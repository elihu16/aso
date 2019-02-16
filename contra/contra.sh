#!/bin/sh
NOM=$1
echo $NOM
echo ${NOM}
b=""
echo $b
c=$(cat /etc/passwd | grep $NOM)
echo ${c}
if [ $c = $b ]; then
	echo "no se encuentra el usaurio"
	exit
else
	echo "funciona"
fi
	echo "Ingresa el minimo de dias para cambiar la contraseña del usuario"
	read mid
	#chage -m $mid
	echo "minimo de dias: "$mid
	echo "Ingrese el maximo de dias para cambiar la contraseña del usuario"
	read maxd
	#chage -M $maxd
	echo "maximo de dias: "$maxd
	echo "Advertencia de cambiar la contraseña"
	read adv
	#chage -W $adv
	echo "advertencia: " $adv

	chage -l $NOM
